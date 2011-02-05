class CreatePost338s < ActiveRecord::Migration
  def self.up
    create_table :post338s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post338s
  end
end
