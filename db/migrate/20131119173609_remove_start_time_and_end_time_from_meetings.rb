class RemoveStartTimeAndEndTimeFromMeetings < ActiveRecord::Migration
  def change
  	remove_column :meetings, :start_time
  	remove_column :meetings, :end_time
  	add_column :meetings, :start_time, :integer
  	add_column :meetings, :end_time, :integer
  end
end
