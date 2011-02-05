class CreatePost375s < ActiveRecord::Migration
  def self.up
    create_table :post375s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post375s
  end
end
