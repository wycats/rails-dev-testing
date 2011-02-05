class CreatePost67s < ActiveRecord::Migration
  def self.up
    create_table :post67s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post67s
  end
end
