class CreatePost389s < ActiveRecord::Migration
  def self.up
    create_table :post389s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post389s
  end
end
