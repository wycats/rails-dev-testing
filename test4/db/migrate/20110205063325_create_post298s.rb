class CreatePost298s < ActiveRecord::Migration
  def self.up
    create_table :post298s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post298s
  end
end
