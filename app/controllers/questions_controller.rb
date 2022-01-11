class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:message]
      if @question.downcase == "i am going to work right now!"
        @coach = ""
      elsif @question.end_with?("?")
        @coach = "Silly question, get dressed and go to work!"
      else
        @coach = "I don't care, get dressed and go to work!"
      end
  end
end
