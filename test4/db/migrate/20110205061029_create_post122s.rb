class CreatePost122s < ActiveRecord::Migration
  def self.up
    create_table :post122s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post122s
  end
end
