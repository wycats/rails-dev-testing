class CreatePost448s < ActiveRecord::Migration
  def self.up
    create_table :post448s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post448s
  end
end
