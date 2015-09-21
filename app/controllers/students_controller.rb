class StudentsController < ApplicationController
  def index
    @classroom = Classroom.find(params[:classroom_id])
    @students = @classroom.students.all
  end
end