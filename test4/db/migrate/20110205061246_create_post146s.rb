class CreatePost146s < ActiveRecord::Migration
  def self.up
    create_table :post146s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post146s
  end
end
