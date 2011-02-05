class CreatePost214s < ActiveRecord::Migration
  def self.up
    create_table :post214s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post214s
  end
end
