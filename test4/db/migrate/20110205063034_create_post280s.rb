class CreatePost280s < ActiveRecord::Migration
  def self.up
    create_table :post280s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post280s
  end
end
