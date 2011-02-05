class CreatePost239s < ActiveRecord::Migration
  def self.up
    create_table :post239s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post239s
  end
end
