class AnswersController < ApplicationController
  def new
    @answers = Answer.new(question_id: 1,description: "hey world")
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

end
