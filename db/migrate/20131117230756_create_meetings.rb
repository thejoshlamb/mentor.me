class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.date :date
      t.time :start_time
      t.integer :duration_mins
      t.time :end_time
      t.string :location
      t.string :time_block

      t.timestamps
    end
  end
end
