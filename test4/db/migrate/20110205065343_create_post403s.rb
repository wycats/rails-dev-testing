class CreatePost403s < ActiveRecord::Migration
  def self.up
    create_table :post403s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post403s
  end
end
