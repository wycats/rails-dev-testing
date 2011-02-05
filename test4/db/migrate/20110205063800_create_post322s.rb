class CreatePost322s < ActiveRecord::Migration
  def self.up
    create_table :post322s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post322s
  end
end
