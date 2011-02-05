class CreatePost336s < ActiveRecord::Migration
  def self.up
    create_table :post336s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post336s
  end
end
