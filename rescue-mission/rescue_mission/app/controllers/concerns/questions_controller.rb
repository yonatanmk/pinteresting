require 'Pry'

class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @id = params['id']
    @question = Question.find(params['id'])
    @answers = @question.answers
    @answer = Answer.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      # flash[:notice] = 'Question was successfully added.'
      redirect_to @question, notice: 'Question was successfully added.'
    else
      render :new
    end

  end

  def new
    @question = Question.new
  end

  def destroy
    binding.pry
  end

  private

  def question_params
    binding.pry
    params.require(:question).permit(:title, :description)
  end
end
