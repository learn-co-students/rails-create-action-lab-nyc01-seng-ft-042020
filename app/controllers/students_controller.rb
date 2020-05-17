class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student=Student.new
  end

  def create
    @student=Student.create(actual_params)
    redirect_to student_path(@student.id)
  end




  private

  def actual_params
    params.require(:student).permit(:first_name,:last_name)
  end

end
