class CreatePost10s < ActiveRecord::Migration
  def self.up
    create_table :post10s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post10s
  end
end
