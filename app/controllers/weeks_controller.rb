class WeeksController < ApplicationController
  def show
    @week = Week.find(params[:id])
  end

  def new
    @week = Week.new
  end

  def create
    @course = Course.find(params[:id])
    @week = @course.weeks.create(week_params)
    if @week.save
      redirect_to course_weeks_path
    else
      render :new
    end
  end


private
  def week_params
    params.require(:week).permit(:name)
  end
end
