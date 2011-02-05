class CreatePost414s < ActiveRecord::Migration
  def self.up
    create_table :post414s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post414s
  end
end
