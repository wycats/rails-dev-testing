class CreatePost352s < ActiveRecord::Migration
  def self.up
    create_table :post352s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post352s
  end
end
