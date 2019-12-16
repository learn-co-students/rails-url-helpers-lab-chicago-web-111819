Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students/:id/activate', to: 'students#active_status', as: 'activate_student'

  resources :students, only: [:index, :show]
end
