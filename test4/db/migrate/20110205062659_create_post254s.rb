class CreatePost254s < ActiveRecord::Migration
  def self.up
    create_table :post254s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post254s
  end
end
