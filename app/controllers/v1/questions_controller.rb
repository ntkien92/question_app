class V1::QuestionsController < ApplicationController
  def index
    questions = Question.all.order("RANDOM()")
    answers = questions.map { |question| question.vietnamese }.shuffle[0..3]
    question1 = []
    questions.each do |question|
      answers[0] = question.vietnamese unless answers.include?(question.vietnamese)
      answers = answers.shuffle
      answers = answers.shuffle
      question.answer1 = answers[0]
      question.answer2 = answers[1]
      question.answer3 = answers[2]
      question.answer4 = answers[3]
      question1 << question
    end
    render json: question1
  end
end
