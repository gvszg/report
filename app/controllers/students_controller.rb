class StudentsController < ApplicationController
  before_action :find_gradeclass

  def index
    @students = @gradeclass.students.all
  end

  def show
    @student = @students.where(params[:id]).first
  end

  def new
    @student = @gradeclass.students.new
    @score = @student.scores.new
  end

  def create
    @student = @gradeclass.students.new(student_params)

    if @student.save
      flash[:notice] = "新增學生成功"
      redirect_to gradeclass_students_path(@gradeclass)
    else
      render :new
    end
  end



  private

  def student_params
    params.require(:student).permit(:number, :name, :scores_attributes => [:score])  
  end

  def find_gradeclass
    @gradeclass = Gradeclass.find(params[:gradeclass_id])
  end
end