class CreatePost192s < ActiveRecord::Migration
  def self.up
    create_table :post192s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post192s
  end
end
