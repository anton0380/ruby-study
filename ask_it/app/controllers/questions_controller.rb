# frozen_string_literal: true

class QuestionsController < ApplicationController
  include QuestionsAnswers
  before_action :require_authentication, except: %i[show index]
  before_action :set_question!, only: %i[show destroy edit update]
  before_action :authorize_question!
  after_action :verify_authorized

  def index
    @tags = Tag.where(id: params[:tag_ids]) if params[:tag_ids]
    @pagy, @questions = pagy Question.all_by_tags(@tags)
    @questions = @questions.decorate
  end

  def show
    load_question_answers
  end

  def new
    @question = Question.new
  end

  def edit; end

  def create
    @question = current_user.questions.build question_params
    if @question.save
      respond_to do |format|
        format.html do
          flash[:success] = 'Question created!'
          redirect_to questions_path
        end
        format.turbo_stream do
          @question = @question.decorate
          flash.now[:success] = 'Question created!'
        end
      end
    else
      render :new
    end
  end

  def update
    if @question.update question_params
      respond_to do |format|
        format.html do
          flash[:success] = 'Question updated!'
          redirect_to questions_path
        end
        format.turbo_stream do
          @question = @question.decorate
          flash.now[:success] = 'Question updated!'
        end
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @question.destroy
    respond_to do |format|
      format.html do
        flash[:success] = t('.success')
        redirect_to questions_path, status: :see_other
      end
      format.turbo_stream { flash.now[:success] = t('.success') }
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, tag_ids: [])
  end

  def set_question!
    @question = Question.find params[:id]
  end

  def authorize_question!
    authorize(@question || Question)
  end
end
