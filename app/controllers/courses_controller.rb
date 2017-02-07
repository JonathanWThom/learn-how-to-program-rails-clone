class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    if @course.save
      redirect_to courses_path
    else
      flash[:notice] = "Nice try ding dong. try again"
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    if @course.save
      redirect_to course_path(@course)
    else
      flash[:notice] = "Nice try ding dong. try again"
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

private
  def course_params
    params.require(:course).permit(:name)
  end
end
