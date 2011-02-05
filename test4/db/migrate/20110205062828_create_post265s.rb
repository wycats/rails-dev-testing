class CreatePost265s < ActiveRecord::Migration
  def self.up
    create_table :post265s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post265s
  end
end
