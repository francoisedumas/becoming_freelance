module Maintenance
  class LessonsController < BaseController
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
        :title, :description, :ready,
        learning_blocks_attributes: [:id, :title, :content, :_destroy],
        exercises_attributes: [:id, :content, :_destroy],
        resources_attributes: [:id, :resource_type, :url, :content, :image, :_destroy]
      )
    end
  end
end
