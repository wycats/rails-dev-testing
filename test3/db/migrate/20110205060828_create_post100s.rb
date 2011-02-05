class CreatePost100s < ActiveRecord::Migration
  def self.up
    create_table :post100s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post100s
  end
end
