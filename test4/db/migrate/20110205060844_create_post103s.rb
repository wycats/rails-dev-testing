class CreatePost103s < ActiveRecord::Migration
  def self.up
    create_table :post103s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post103s
  end
end
