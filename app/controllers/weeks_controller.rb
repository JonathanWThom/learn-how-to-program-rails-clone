class WeeksController < ApplicationController
  def show
    @week = Week.find(params[:id])
  end

  def new
    @course = Course.find(params[:course_id])
    @week = @course.weeks.new
  end

  def create
    @course = Course.find(params[:course_id])
    @week = @course.weeks.create(week_params)
    if @week.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @week = Week.find(params[:id])
  end

  def update
    @course = Course.find(params[:course_id])
    @week = Week.find(params[:id])
    @week.update(week_params)
    if @week.save
      flash[:notice] = "Nice edit, ding dong"
      redirect_to course_path(@course)
    else
      flash[:notice] = "WRONG"
      render :edit
    end
  end

private
  def week_params
    params.require(:week).permit(:name)
  end
end
