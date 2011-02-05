class CreatePost170s < ActiveRecord::Migration
  def self.up
    create_table :post170s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post170s
  end
end
