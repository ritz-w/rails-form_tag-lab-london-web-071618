class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.create(first_name:params[:first_name], last_name: params[:last_name])
    redirect_to new_student_path
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

end
