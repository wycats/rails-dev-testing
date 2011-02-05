class CreatePost365s < ActiveRecord::Migration
  def self.up
    create_table :post365s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post365s
  end
end
