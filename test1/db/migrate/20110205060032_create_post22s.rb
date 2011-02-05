class CreatePost22s < ActiveRecord::Migration
  def self.up
    create_table :post22s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post22s
  end
end
