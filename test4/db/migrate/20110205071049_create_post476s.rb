class CreatePost476s < ActiveRecord::Migration
  def self.up
    create_table :post476s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post476s
  end
end
