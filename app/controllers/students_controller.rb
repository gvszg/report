class StudentsController < ApplicationController
  before_action :find_gradeclass

  def index
    @students = @gradeclass.students.all
  end

  def show
    @student = @gradeclass.students.all.find(params[:id])
    @score = Score.new
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

  def edit
    @student = @gradeclass.students.all.find(params[:id])
    # @score = @student.scores.all.find_by(params[:score_id])
  end

  def update
    
  end



  private

  def student_params
    params.require(:student).permit(:number, :name)  
  end

  def find_gradeclass
    @gradeclass = Gradeclass.find(params[:gradeclass_id])
  end
end