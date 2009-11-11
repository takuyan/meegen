class CreateNextLogs < ActiveRecord::Migration
  def self.up
    create_table :next_logs do |t|

      t.integer :meegen_id

      t.integer :show_count


      t.timestamps

    end
  end

  def self.down
    drop_table :next_logs
  end
end
