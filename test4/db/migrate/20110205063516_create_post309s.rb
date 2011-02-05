class CreatePost309s < ActiveRecord::Migration
  def self.up
    create_table :post309s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post309s
  end
end
