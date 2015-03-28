class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'Question created.'
      redirect_to '/'
    else
      flash[:notice] = @question.errors.full_messages
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    # This makes you vulnerable to SQL injection
    # @answer_show = Answer.where("question_id = #{params[:id]}").order(created_at: :desc)
    @answer_show = Answer.where(question_id: params[:id]).order(created_at: :desc)
    if params.include?('question_id')
      @answer_show = Answer.where("question_id = '#{params[:question_id]}'").order(created_at: :desc)
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    # logic to deal with answer featuring goes here
    @question = Question.find(params[:id])
   if @question.update_attributes(question_params)
     flash[:notice] = 'Edit successful.'
     redirect_to '/'
   else
     render 'edit'
   end
  end

  def destroy
    if Question.find(params[:id]).destroy
      flash[:notice] = 'TERMINATED.'
      redirect_to '/'
    else
      render :new
    end

  end

  protected
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
