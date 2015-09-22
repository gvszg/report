class StudentsController < ApplicationController
  def index
    @gradeclass = Gradeclass.find(params[:gradeclass_id])
    @students = @gradeclass.students.all
  end
end