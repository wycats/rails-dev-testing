class CreatePost151s < ActiveRecord::Migration
  def self.up
    create_table :post151s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post151s
  end
end
