class Mentor < ActiveRecord::Base

	belongs_to :user
	has_many :meetings

	validates_presence_of :name, :info

	validates :info, length: { maximum: 255 } #maybe could be allowed to be more?

end
