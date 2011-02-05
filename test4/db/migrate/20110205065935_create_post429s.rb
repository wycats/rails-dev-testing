class CreatePost429s < ActiveRecord::Migration
  def self.up
    create_table :post429s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post429s
  end
end
