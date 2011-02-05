class CreatePost347s < ActiveRecord::Migration
  def self.up
    create_table :post347s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post347s
  end
end
