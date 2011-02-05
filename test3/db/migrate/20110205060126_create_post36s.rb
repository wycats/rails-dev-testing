class CreatePost36s < ActiveRecord::Migration
  def self.up
    create_table :post36s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post36s
  end
end
