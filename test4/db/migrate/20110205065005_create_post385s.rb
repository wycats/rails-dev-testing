class CreatePost385s < ActiveRecord::Migration
  def self.up
    create_table :post385s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post385s
  end
end
