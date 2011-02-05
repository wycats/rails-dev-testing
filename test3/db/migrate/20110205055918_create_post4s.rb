class CreatePost4s < ActiveRecord::Migration
  def self.up
    create_table :post4s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post4s
  end
end
