class CreatePost198s < ActiveRecord::Migration
  def self.up
    create_table :post198s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post198s
  end
end
