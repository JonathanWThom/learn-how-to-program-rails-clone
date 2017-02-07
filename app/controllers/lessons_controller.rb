class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @previousLesson = Lesson.lessonPrev(@lesson.number)
    @nextLesson = Lesson.lessonNext(@lesson.number)
  end
end
