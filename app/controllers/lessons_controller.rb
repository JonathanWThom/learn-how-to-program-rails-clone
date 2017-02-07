class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @previousLesson = Lesson.lessonPrev(@lesson.number)
    @nextLesson = Lesson.lessonNext(@lesson.number)
  end

  def new
    @week = Week.find(params[:id])
    @lesson = Lesson.new
  end

  def create
    @week = Week.find(params[:id])
    @lesson = @week.lessons.create(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson Succesfully Added"
      redirect_to week_lessons_path
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @week = Week.find(params[:week_id])
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    if @lesson.save
      redirect_to week_lesson_path(@week, @lesson)
    else
      render :edit
    end
  end

  def destroy
    @week = Week.find(params[:week_id])
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to week_lessons_path(@week)
  end


private

  def lesson_params
    params.require(:lesson).permit(:name, :content, :number)
  end
end
