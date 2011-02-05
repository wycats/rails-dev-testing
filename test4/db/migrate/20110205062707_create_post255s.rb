class CreatePost255s < ActiveRecord::Migration
  def self.up
    create_table :post255s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post255s
  end
end
