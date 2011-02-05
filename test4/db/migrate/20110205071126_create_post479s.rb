class CreatePost479s < ActiveRecord::Migration
  def self.up
    create_table :post479s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post479s
  end
end
