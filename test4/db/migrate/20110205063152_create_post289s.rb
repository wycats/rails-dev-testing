class CreatePost289s < ActiveRecord::Migration
  def self.up
    create_table :post289s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post289s
  end
end
