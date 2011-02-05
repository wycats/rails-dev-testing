class CreatePost95s < ActiveRecord::Migration
  def self.up
    create_table :post95s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post95s
  end
end
