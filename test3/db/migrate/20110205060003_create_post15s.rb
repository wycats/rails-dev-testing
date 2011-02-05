class CreatePost15s < ActiveRecord::Migration
  def self.up
    create_table :post15s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post15s
  end
end
