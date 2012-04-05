class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.integer :user_id
      t.integer :petition_id

      t.timestamps
    end
  end
end
