class CreatePost304s < ActiveRecord::Migration
  def self.up
    create_table :post304s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post304s
  end
end
