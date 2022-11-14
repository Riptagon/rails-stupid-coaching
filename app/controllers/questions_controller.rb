# questions controller
class QuestionsController < ApplicationController
  def answer
    @question = params[:question]

    if @question == 'I am going to work'
      @answer = 'Great!'
      return
    end
    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
      return
    end
    @answer = "I don't care, get dressed and go to work!"
  end
end
