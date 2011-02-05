class CreatePost250s < ActiveRecord::Migration
  def self.up
    create_table :post250s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post250s
  end
end
