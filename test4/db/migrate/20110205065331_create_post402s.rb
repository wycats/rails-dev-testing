class CreatePost402s < ActiveRecord::Migration
  def self.up
    create_table :post402s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post402s
  end
end
