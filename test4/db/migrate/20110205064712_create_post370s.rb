class CreatePost370s < ActiveRecord::Migration
  def self.up
    create_table :post370s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post370s
  end
end
