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
      params.require(:mentor).permit( :name, :info, :email, :monday_available_from, :monday_available_to,
                                      :tuesday_available_from, :tuesday_available_to,
                                      :wednesday_available_from, :wednesday_available_to,
                                      :thursday_available_from, :thursday_available_to, 
                                      :friday_available_from, :friday_available_to, :saturday_available_from, 
                                      :saturday_available_to, :sunday_available_from, :sunday_available_to) 
  end
end
