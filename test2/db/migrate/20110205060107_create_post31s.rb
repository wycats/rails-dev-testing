class CreatePost31s < ActiveRecord::Migration
  def self.up
    create_table :post31s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post31s
  end
end
