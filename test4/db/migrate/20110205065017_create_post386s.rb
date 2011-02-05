class CreatePost386s < ActiveRecord::Migration
  def self.up
    create_table :post386s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post386s
  end
end
