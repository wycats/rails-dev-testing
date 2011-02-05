class CreatePost28s < ActiveRecord::Migration
  def self.up
    create_table :post28s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post28s
  end
end
