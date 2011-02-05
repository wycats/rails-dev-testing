class CreatePost432s < ActiveRecord::Migration
  def self.up
    create_table :post432s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post432s
  end
end
