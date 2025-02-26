class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @lessons = Lesson.all
  end

  def demo
  end
end
