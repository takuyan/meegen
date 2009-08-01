class AddUrlToMeegens < ActiveRecord::Migration
  def self.up
    add_column :meegens, :url, :string
  end

  def self.down
    remove_column :meegens, :url
  end
end
