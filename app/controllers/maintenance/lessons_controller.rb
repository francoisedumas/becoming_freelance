module Maintenance
  class LessonsController < ApplicationController
    before_action :authenticate_admin!

    def index
      @lessons = Lesson.all.order(position: :asc)
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

    def edit
      @lesson = Lesson.find(params[:id])
      @lesson.learning_blocks.build
      @lesson.exercises.build
      @lesson.resources.build
    end

    def update
      @lesson = Lesson.find(params[:id])
      if @lesson.update(lesson_params)
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
  end
end
