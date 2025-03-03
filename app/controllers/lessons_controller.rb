class LessonsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create]

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.includes(:learning_blocks, :exercises, :resources).find(params[:id])
    @learning_blocks = @lesson.learning_blocks
    @resources = @lesson.resources
    @exercises = @lesson.exercises
    @user_exercises = user_exercises
  end


  def new
    @lesson = Lesson.new
    @lesson.learning_blocks.build
    @lesson.exercises.build
    @lesson.resources.build
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to @lesson, notice: 'Lesson was successfully created.'
    else
      render :new
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(
      :title, :description,
      learning_blocks_attributes: [:id, :title, :content, :_destroy],
      exercises_attributes: [:id, :description, :_destroy],
      resources_attributes: [:id, :resource_type, :url, :description, :image, :_destroy]
    )
  end

  def authenticate_admin!
    redirect_to root_path, alert: 'You are not authorized to access this page.' unless current_user&.admin?
  end

  def user_exercises
    @exercises.map do |exercise|
      UserExercise.find_or_create_by(user: current_user, exercise: exercise)
    end
  end
end
