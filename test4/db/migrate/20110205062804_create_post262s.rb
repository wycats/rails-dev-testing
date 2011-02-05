class CreatePost262s < ActiveRecord::Migration
  def self.up
    create_table :post262s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post262s
  end
end
