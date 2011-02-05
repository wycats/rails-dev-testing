class CreatePost7s < ActiveRecord::Migration
  def self.up
    create_table :post7s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post7s
  end
end
