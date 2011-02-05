class CreatePost177s < ActiveRecord::Migration
  def self.up
    create_table :post177s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post177s
  end
end
