class CreatePost311s < ActiveRecord::Migration
  def self.up
    create_table :post311s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post311s
  end
end
