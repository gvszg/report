class StudentsController < ApplicationController
  before_action :find_gradeclass

  def index
    @students = @gradeclass.students.all
    @student = @students.where(params[:id]).first
    @scores = @student.scores
    @score = @scores.where(params[:id]).first.score
    
  end

  def show
    @student = @students.where(params[:id]).first
    @scores = @student.scores
    @score = @scores.where(params[:id]).first.score
  end

  def new
    @student = @gradeclass.students.new
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
    params.require(:student).permit(:number, :name)  
  end

  def find_gradeclass
    @gradeclass = Gradeclass.find(params[:gradeclass_id])
  end
end