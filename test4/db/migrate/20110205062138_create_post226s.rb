class CreatePost226s < ActiveRecord::Migration
  def self.up
    create_table :post226s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post226s
  end
end
