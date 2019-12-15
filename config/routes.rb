Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/students/:id/activate', to: 'students#update', as: 'activate_student'

  resources :students, only: [:index, :show] do
    put :activate_student, on: :member
  end

end
