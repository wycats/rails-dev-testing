class CreatePost293s < ActiveRecord::Migration
  def self.up
    create_table :post293s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post293s
  end
end
