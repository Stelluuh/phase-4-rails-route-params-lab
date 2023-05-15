class StudentsController < ApplicationController

  def index
    students = if params[:name] #if the :name paramenter is present in the hash
      Student.by_name(params[:name]) # .by_name is in models file.
    else
      Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
