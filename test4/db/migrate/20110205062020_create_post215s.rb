class CreatePost215s < ActiveRecord::Migration
  def self.up
    create_table :post215s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post215s
  end
end
