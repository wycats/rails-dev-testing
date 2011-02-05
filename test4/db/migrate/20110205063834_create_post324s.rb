class CreatePost324s < ActiveRecord::Migration
  def self.up
    create_table :post324s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post324s
  end
end
