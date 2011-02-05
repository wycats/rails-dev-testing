class CreatePost77s < ActiveRecord::Migration
  def self.up
    create_table :post77s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post77s
  end
end
