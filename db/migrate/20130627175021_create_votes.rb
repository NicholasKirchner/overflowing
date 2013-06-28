class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votable_id
      t.string :votable_type
      t.integer :user_id
      t.integer :value
    end
    add_index :votes, [:votable_id, :votable_type, :user_id], :unique => true
  end
end
