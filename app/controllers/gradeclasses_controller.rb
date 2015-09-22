class GradeclassesController < ApplicationController
  def index
    @gradeclasses = Gradeclass.all
  end

  def new
    @gradeclass = Gradeclass.new
  end

  def create
    @gradeclass = Gradeclass.new(params.require(:gradeclass).permit(:gradeclass))

    if @gradeclass.save
      flash[:notice] = "班級新增成功"
      redirect_to root_path
    else
      render :new
    end
  end
end