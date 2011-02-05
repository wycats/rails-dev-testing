class CreatePost490s < ActiveRecord::Migration
  def self.up
    create_table :post490s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post490s
  end
end
