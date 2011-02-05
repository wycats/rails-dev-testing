class CreatePost86s < ActiveRecord::Migration
  def self.up
    create_table :post86s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post86s
  end
end
