class CreatePost278s < ActiveRecord::Migration
  def self.up
    create_table :post278s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post278s
  end
end
