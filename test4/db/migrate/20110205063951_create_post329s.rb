class CreatePost329s < ActiveRecord::Migration
  def self.up
    create_table :post329s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post329s
  end
end
