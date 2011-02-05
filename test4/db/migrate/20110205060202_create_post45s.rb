class CreatePost45s < ActiveRecord::Migration
  def self.up
    create_table :post45s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post45s
  end
end
