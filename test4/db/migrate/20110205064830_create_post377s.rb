class CreatePost377s < ActiveRecord::Migration
  def self.up
    create_table :post377s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post377s
  end
end
