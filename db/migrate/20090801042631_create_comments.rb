class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :name
      t.integer :meegen_id
      t.string :user_name

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
