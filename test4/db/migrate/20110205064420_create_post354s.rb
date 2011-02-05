class CreatePost354s < ActiveRecord::Migration
  def self.up
    create_table :post354s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post354s
  end
end
