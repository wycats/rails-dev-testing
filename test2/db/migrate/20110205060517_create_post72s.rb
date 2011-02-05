class CreatePost72s < ActiveRecord::Migration
  def self.up
    create_table :post72s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post72s
  end
end
