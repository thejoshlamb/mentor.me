class User < ActiveRecord::Base
	has_secure_password

	has_many :meetings

	has_many :mentors, through: :meetings

	ROLES = %w[admin student mentor]

	validates :name, :email, :password, :password_confirmation, :presence => true
	#validates_presence_of :name, :email, :password, :password_confirmation
end
