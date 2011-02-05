class CreatePost368s < ActiveRecord::Migration
  def self.up
    create_table :post368s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post368s
  end
end
