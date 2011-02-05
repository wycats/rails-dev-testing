class CreatePost20s < ActiveRecord::Migration
  def self.up
    create_table :post20s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post20s
  end
end
