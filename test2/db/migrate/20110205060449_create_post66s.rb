class CreatePost66s < ActiveRecord::Migration
  def self.up
    create_table :post66s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post66s
  end
end
