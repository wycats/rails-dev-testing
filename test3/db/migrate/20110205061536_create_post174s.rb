class CreatePost174s < ActiveRecord::Migration
  def self.up
    create_table :post174s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post174s
  end
end
