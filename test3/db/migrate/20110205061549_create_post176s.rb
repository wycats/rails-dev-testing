class CreatePost176s < ActiveRecord::Migration
  def self.up
    create_table :post176s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post176s
  end
end
