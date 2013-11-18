class Mentor < ActiveRecord::Base

	belongs_to :user
	has_many :meetings

	validates_presence_of :name, :info

end
