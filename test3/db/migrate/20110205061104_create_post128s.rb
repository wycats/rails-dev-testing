class CreatePost128s < ActiveRecord::Migration
  def self.up
    create_table :post128s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post128s
  end
end
