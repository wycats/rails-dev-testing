class CreatePost39s < ActiveRecord::Migration
  def self.up
    create_table :post39s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post39s
  end
end
