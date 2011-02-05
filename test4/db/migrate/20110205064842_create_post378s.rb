class CreatePost378s < ActiveRecord::Migration
  def self.up
    create_table :post378s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post378s
  end
end
