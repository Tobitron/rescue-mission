class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answer_show = Answer.where("question_id = '10'")
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'Question Created.'
      redirect_to '/'
    else
      flash[:notice] = @question.errors.full_messages
      render :new
    end
  end

  protected
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
