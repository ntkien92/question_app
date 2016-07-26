class Admin::QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(id: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params_question)
    if @question.save
      redirect_to admin_questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find_by(id: params[:id])
  end

  def update
    @question = Question.find_by(id: params[:id])
    if @question.update(params_question)
      redirect_to admin_questions_path
    else
      render :edit
    end
  end

  private

  def params_question
    params.require(:question).permit(:japanese, :vietnamese)
  end
end