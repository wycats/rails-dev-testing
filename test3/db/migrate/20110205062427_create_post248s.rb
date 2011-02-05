class CreatePost248s < ActiveRecord::Migration
  def self.up
    create_table :post248s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post248s
  end
end
