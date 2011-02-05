class CreatePost12s < ActiveRecord::Migration
  def self.up
    create_table :post12s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post12s
  end
end
