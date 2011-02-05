class CreatePost297s < ActiveRecord::Migration
  def self.up
    create_table :post297s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post297s
  end
end
