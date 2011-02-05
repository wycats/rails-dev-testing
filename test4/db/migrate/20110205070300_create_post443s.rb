class CreatePost443s < ActiveRecord::Migration
  def self.up
    create_table :post443s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post443s
  end
end
