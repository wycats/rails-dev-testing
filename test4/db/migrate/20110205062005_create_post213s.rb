class CreatePost213s < ActiveRecord::Migration
  def self.up
    create_table :post213s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post213s
  end
end
