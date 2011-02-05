class CreatePost426s < ActiveRecord::Migration
  def self.up
    create_table :post426s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post426s
  end
end
