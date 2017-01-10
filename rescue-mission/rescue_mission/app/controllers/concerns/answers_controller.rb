require 'Pry'

class AnswersController < ApplicationController

  # def show
  #   @id = params['id']
  #   @question = Question.find(params['id'])
  #   @answers = @question.answers
  #   @answer = Answer.new
  # end

  def create
    @answer = Answer.new(answer_params)
    @answer.best = false
    binding.pry
    if @answer.save
      redirect_to @answer, notice: 'Answer was successfully added.'
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :question_id)
  end
end
