class SubjectsController < ApplicationController
  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(params.require(:subject).permit(:name))

    if @subject.save
      redirect_to root_path
    else
      render :new
    end
  end
end