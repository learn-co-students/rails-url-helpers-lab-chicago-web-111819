class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate_student]
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def update
    set_student
    if @student.active
      @student.update_attributes(active: false)
    elsif !@student.active
      @student.update_attributes(active: true)
    end
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
    
end