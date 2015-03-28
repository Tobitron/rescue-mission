class AnswersController < ApplicationController
  def new
    @answers = Answer.new
  end

  def create
    @answers = Answer.new(question_id: params["question_id"], description: params[:answer][:description])
    if @answers.save
      redirect_to '/questions/' + "#{params[:question_id]}"
    else
      flash[:notice] = @answers.errors.full_messages
      redirect_to "/questions/#{params[:question_id]}"

    end
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    if @answer.update_attributes(answer_params)
      flash[:notice] = 'Answer featured!'
      redirect_to question_path(@question)
    else
      render :'questions/show'
    end

  end


  protected
  def answer_params
    params.require(:answer).permit(:description, :featured)
  end
end
