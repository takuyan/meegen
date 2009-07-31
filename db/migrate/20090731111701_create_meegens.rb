class CreateMeegens < ActiveRecord::Migration
  def self.up
    create_table :meegens do |t|
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :meegens
  end
end
