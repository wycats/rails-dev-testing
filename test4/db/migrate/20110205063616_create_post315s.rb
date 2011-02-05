class CreatePost315s < ActiveRecord::Migration
  def self.up
    create_table :post315s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post315s
  end
end
