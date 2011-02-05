class CreatePost446s < ActiveRecord::Migration
  def self.up
    create_table :post446s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post446s
  end
end
