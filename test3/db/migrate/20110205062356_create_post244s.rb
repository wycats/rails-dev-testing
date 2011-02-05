class CreatePost244s < ActiveRecord::Migration
  def self.up
    create_table :post244s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post244s
  end
end
