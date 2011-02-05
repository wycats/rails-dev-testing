class CreatePost178s < ActiveRecord::Migration
  def self.up
    create_table :post178s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post178s
  end
end
