class CreatePost172s < ActiveRecord::Migration
  def self.up
    create_table :post172s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post172s
  end
end
