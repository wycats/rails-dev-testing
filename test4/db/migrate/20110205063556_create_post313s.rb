class CreatePost313s < ActiveRecord::Migration
  def self.up
    create_table :post313s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post313s
  end
end
