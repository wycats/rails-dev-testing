class CreatePost465s < ActiveRecord::Migration
  def self.up
    create_table :post465s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post465s
  end
end
