class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(params.require(:grade).permit(:grade))

    if @grade.save
      # flash[:notice] = "班級新增成功"
      redirect_to gradeclasses_path
    else
      render :new
    end
  end
end