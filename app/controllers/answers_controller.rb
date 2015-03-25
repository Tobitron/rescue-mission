class AnswersController < ApplicationController

  def new
    @answers = Answer.new(question_id: 1,description: "hey world")
  end

  def create
    binding.pry
    @answers = Answer.new(question_id: 1, description: "ey world")
  end

end
