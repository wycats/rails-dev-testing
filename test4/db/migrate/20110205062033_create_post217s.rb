class CreatePost217s < ActiveRecord::Migration
  def self.up
    create_table :post217s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post217s
  end
end
