class ScoresController < ApplicationController
  def create
    @student = @gradeclass.students.all.find(params[:id])
    @score = @student.scores.build(score_params)

    if @score.svae
      redirect_to gradeclass_students(@student)
    else
      render 'students/show'
    end
  end


  private

  def score_params
    params.require(:score).permit(:score, :subject_ids => [])
  end
end