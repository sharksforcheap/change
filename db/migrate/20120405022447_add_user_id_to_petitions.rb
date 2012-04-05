class AddUserIdToPetitions < ActiveRecord::Migration
  def change
  	add_column :petitions, :user_id, :integer
  end
end
