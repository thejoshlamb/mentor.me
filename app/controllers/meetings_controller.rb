class MeetingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to root_url, :notice => "Meeting booked!"
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def meeting_params
    params.require(:meeting).permit(:date, :start_time, :duration_mins, :end_time, :location, :time_block)
  end
end


