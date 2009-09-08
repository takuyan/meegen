class AddFavToMeegens < ActiveRecord::Migration
  def self.up
    add_column :meegens, :fav, :integer, :default => 0
  end

  def self.down
    remove_column :meegens, :fav
  end
end
