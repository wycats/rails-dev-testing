class CreatePost18s < ActiveRecord::Migration
  def self.up
    create_table :post18s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post18s
  end
end
