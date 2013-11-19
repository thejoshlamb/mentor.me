class AddUserIdAndMentorIdToMeeting < ActiveRecord::Migration
  def change
  	add_column :meetings, :user_id, :integer
  	add_column :meetings, :mentor_id, :integer
  end
end
