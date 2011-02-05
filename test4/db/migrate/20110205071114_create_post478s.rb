class CreatePost478s < ActiveRecord::Migration
  def self.up
    create_table :post478s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post478s
  end
end
