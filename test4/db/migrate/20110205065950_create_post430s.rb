class CreatePost430s < ActiveRecord::Migration
  def self.up
    create_table :post430s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post430s
  end
end
