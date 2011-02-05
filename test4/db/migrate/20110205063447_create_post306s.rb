class CreatePost306s < ActiveRecord::Migration
  def self.up
    create_table :post306s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post306s
  end
end
