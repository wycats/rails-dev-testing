class CreatePost186s < ActiveRecord::Migration
  def self.up
    create_table :post186s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post186s
  end
end
