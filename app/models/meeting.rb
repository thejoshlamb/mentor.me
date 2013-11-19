class Meeting < ActiveRecord::Base
	belongs_to :user
	belongs_to :mentor

	validates :start_time, :numericality => {:only_integer => true, :greater_than => -1, :less_than => 24 }
	validate :mentor_must_be_available
	validate :mentor_must_not_be_booked

	def mentor_must_be_available
		unless self.mentor.is_available?(self.date, self.start_time) 
			errors.add("Mentor not available at that time")
		end
	end

	def mentor_must_not_be_booked
		unless self.mentor.not_booked?(self.date, self.start_time) 
			errors.add("Another Student has booked that time slot")
		end
	end

end
