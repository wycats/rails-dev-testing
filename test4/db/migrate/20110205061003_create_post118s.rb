class CreatePost118s < ActiveRecord::Migration
  def self.up
    create_table :post118s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post118s
  end
end
