class CreatePost185s < ActiveRecord::Migration
  def self.up
    create_table :post185s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post185s
  end
end
