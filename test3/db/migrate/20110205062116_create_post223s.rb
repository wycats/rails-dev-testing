class CreatePost223s < ActiveRecord::Migration
  def self.up
    create_table :post223s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post223s
  end
end
