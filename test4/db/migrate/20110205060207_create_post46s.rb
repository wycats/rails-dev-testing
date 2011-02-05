class CreatePost46s < ActiveRecord::Migration
  def self.up
    create_table :post46s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post46s
  end
end
