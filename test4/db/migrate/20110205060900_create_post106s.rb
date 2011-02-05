class CreatePost106s < ActiveRecord::Migration
  def self.up
    create_table :post106s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post106s
  end
end
