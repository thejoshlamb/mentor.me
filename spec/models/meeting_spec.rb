require 'spec_helper'

describe Meeting do 

		let!(:mentor) { FactoryGirl.create(:mentor)} #creates a simple mentor available 9-5
		let!(:meeting) { FactoryGirl.create(:meeting)} #creates a meeting for monday nov 26 at 10am

    it "should be available to book true if the mentor is available" do
    	booking = mentor.is_available?(meeting.date, meeting.start_time)
    	booking.should be_true
    end

    it "should not be available to book if the mentor is unavailable" do
    	mentor.is_available?((Date.new(2013,1,1)),18).should_not be_true
    end

 
end
