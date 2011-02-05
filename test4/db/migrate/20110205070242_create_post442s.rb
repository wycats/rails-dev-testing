class CreatePost442s < ActiveRecord::Migration
  def self.up
    create_table :post442s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post442s
  end
end
