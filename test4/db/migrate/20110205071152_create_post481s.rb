class CreatePost481s < ActiveRecord::Migration
  def self.up
    create_table :post481s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post481s
  end
end
