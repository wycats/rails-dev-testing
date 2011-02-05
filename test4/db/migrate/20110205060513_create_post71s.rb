class CreatePost71s < ActiveRecord::Migration
  def self.up
    create_table :post71s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post71s
  end
end
