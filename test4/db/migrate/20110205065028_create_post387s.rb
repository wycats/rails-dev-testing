class CreatePost387s < ActiveRecord::Migration
  def self.up
    create_table :post387s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post387s
  end
end
