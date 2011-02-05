class CreatePost23s < ActiveRecord::Migration
  def self.up
    create_table :post23s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post23s
  end
end
