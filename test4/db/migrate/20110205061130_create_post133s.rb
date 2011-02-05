class CreatePost133s < ActiveRecord::Migration
  def self.up
    create_table :post133s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post133s
  end
end
