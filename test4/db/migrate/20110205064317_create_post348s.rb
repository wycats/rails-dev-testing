class CreatePost348s < ActiveRecord::Migration
  def self.up
    create_table :post348s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post348s
  end
end
