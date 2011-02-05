class CreatePost483s < ActiveRecord::Migration
  def self.up
    create_table :post483s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post483s
  end
end
