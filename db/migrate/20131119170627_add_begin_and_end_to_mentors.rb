class AddBeginAndEndToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :monday_available_from, :integer
    add_column :mentors, :monday_available_to, :integer
    add_column :mentors, :tuesday_available_from, :integer
    add_column :mentors, :tuesday_available_to, :integer
    add_column :mentors, :wednesday_available_from, :integer
    add_column :mentors, :wednesday_available_to, :integer
    add_column :mentors, :thursday_available_from, :integer
    add_column :mentors, :thursday_available_to, :integer
    add_column :mentors, :friday_available_from, :integer
    add_column :mentors, :friday_available_to, :integer
    add_column :mentors, :saturday_available_from, :integer
    add_column :mentors, :saturday_available_to, :integer
    add_column :mentors, :sunday_available_from, :integer
    add_column :mentors, :sunday_available_to, :integer
  end
end
