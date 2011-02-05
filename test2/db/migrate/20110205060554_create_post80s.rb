class CreatePost80s < ActiveRecord::Migration
  def self.up
    create_table :post80s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post80s
  end
end
