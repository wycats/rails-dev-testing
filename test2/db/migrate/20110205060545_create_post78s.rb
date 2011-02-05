class CreatePost78s < ActiveRecord::Migration
  def self.up
    create_table :post78s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post78s
  end
end
