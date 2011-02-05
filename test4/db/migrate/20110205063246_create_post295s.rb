class CreatePost295s < ActiveRecord::Migration
  def self.up
    create_table :post295s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post295s
  end
end
