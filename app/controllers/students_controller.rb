class StudentsController < ApplicationController
  before_action :find_grade

  def index
    @students = @grade.students.all
  end

  def show
    @student = @grade.students.all.find(params[:id])
    @score = Score.new
  end

  def new
    @student = @grade.students.new
  end

  def create
    @student = @grade.students.new(student_params)

    if @student.save
      flash[:notice] = "新增學生成功"
      redirect_to grade_students_path(@grade)
    else
      render :new
    end
  end

  def edit
    @student = @grade.students.all.find(params[:id])
    # @score = @student.scores.all.find_by(params[:score_id])
  end

  def update
    
  end



  private

  def student_params
    params.require(:student).permit(:number, :name)  
  end

  def find_grade
    @grade = Grade.find(params[:grade_id])
  end
end