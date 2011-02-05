class CreatePost210s < ActiveRecord::Migration
  def self.up
    create_table :post210s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post210s
  end
end
