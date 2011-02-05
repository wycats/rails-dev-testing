class CreatePost424s < ActiveRecord::Migration
  def self.up
    create_table :post424s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post424s
  end
end
