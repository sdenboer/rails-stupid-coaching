class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_response(@question)
  end
end


def coach_response(question)
  if question == "I am going to work right now!"
     "Great!"
  elsif question.to_s.end_with? "?"
     "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

