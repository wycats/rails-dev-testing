class CreatePost85s < ActiveRecord::Migration
  def self.up
    create_table :post85s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post85s
  end
end
