class CreatePost257s < ActiveRecord::Migration
  def self.up
    create_table :post257s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post257s
  end
end
