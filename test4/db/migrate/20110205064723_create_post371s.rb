class CreatePost371s < ActiveRecord::Migration
  def self.up
    create_table :post371s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post371s
  end
end
