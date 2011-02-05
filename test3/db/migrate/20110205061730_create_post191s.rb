class CreatePost191s < ActiveRecord::Migration
  def self.up
    create_table :post191s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post191s
  end
end
