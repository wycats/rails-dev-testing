class CreatePost207s < ActiveRecord::Migration
  def self.up
    create_table :post207s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post207s
  end
end
