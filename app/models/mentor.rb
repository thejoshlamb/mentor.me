class Mentor < ActiveRecord::Base

	belongs_to :user
	has_many :meetings
	has_many :categories
	has_many :skills

	validates_presence_of :name, :info

	validates :info, length: { maximum: 255 } #maybe could be allowed to be more?

	def is_available?(date, start_time)
		case date.wday
			when 1
				self.monday_available_from <= start_time && start_time <= self.monday_available_to
			when 2
				self.tuesday_available_from <= start_time && start_time <= self.tuesday_available_to
			when 3
				self.wednesday_available_from <= start_time && start_time <= self.wednesday_available_to
			when 4
				self.thursday_available_from <= start_time && start_time <= self.thursday_available_to
			when 5
				self.friday_available_from <= start_time && start_time <= self.friday_available_to
			when 6
				self.saturday_available_from <= start_time && start_time <= self.saturday_available_to
			when 7
				self.sunday_available_from <= start_time && start_time <= self.sunday_available_to
			else
				false
		end
	end

	def not_booked?(potential_date,potential_start_time)
		self.meetings.where(date: potential_date, start_time: potential_start_time)
	end	

end
