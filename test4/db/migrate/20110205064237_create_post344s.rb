class CreatePost344s < ActiveRecord::Migration
  def self.up
    create_table :post344s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post344s
  end
end
