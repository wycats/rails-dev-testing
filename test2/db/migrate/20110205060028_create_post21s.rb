class CreatePost21s < ActiveRecord::Migration
  def self.up
    create_table :post21s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post21s
  end
end
