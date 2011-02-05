class CreatePost269s < ActiveRecord::Migration
  def self.up
    create_table :post269s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post269s
  end
end
