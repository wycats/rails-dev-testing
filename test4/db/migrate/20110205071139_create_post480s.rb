class CreatePost480s < ActiveRecord::Migration
  def self.up
    create_table :post480s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post480s
  end
end
