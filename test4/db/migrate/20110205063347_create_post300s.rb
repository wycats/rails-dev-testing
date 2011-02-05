class CreatePost300s < ActiveRecord::Migration
  def self.up
    create_table :post300s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post300s
  end
end
