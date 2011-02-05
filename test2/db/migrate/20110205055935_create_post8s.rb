class CreatePost8s < ActiveRecord::Migration
  def self.up
    create_table :post8s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post8s
  end
end
