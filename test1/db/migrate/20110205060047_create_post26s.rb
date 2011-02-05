class CreatePost26s < ActiveRecord::Migration
  def self.up
    create_table :post26s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post26s
  end
end
