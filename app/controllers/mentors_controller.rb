class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
    @mentorsample = @mentors.sample(8)
  end

  def show
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)
    if @mentor.save
      redirect_to root_url, :notify => "Mentor added"
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
  def mentor_params
      params.require(:mentor).permit(:name, :info, :email)
  end
end
