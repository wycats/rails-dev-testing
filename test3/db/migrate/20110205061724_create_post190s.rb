class CreatePost190s < ActiveRecord::Migration
  def self.up
    create_table :post190s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post190s
  end
end
