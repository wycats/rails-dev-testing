class CreatePost82s < ActiveRecord::Migration
  def self.up
    create_table :post82s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post82s
  end
end
