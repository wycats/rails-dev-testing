class CreatePost416s < ActiveRecord::Migration
  def self.up
    create_table :post416s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post416s
  end
end
