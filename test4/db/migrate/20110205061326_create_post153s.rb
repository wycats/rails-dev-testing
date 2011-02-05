class CreatePost153s < ActiveRecord::Migration
  def self.up
    create_table :post153s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post153s
  end
end
