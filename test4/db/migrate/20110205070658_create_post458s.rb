class CreatePost458s < ActiveRecord::Migration
  def self.up
    create_table :post458s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post458s
  end
end
