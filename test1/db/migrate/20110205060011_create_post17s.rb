class CreatePost17s < ActiveRecord::Migration
  def self.up
    create_table :post17s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post17s
  end
end
