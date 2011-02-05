class CreatePost409s < ActiveRecord::Migration
  def self.up
    create_table :post409s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post409s
  end
end
