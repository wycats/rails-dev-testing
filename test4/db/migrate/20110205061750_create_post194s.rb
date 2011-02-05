class CreatePost194s < ActiveRecord::Migration
  def self.up
    create_table :post194s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post194s
  end
end
