class CreatePost57s < ActiveRecord::Migration
  def self.up
    create_table :post57s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post57s
  end
end
