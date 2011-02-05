class CreatePost68s < ActiveRecord::Migration
  def self.up
    create_table :post68s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post68s
  end
end
