class CreatePost493s < ActiveRecord::Migration
  def self.up
    create_table :post493s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post493s
  end
end
