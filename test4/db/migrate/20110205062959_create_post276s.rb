class CreatePost276s < ActiveRecord::Migration
  def self.up
    create_table :post276s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post276s
  end
end
