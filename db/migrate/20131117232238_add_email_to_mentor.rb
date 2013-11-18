class AddEmailToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :email, :string
  end
end
