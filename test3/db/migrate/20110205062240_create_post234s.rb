class CreatePost234s < ActiveRecord::Migration
  def self.up
    create_table :post234s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post234s
  end
end
