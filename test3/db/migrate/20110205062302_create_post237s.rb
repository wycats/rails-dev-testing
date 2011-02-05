class CreatePost237s < ActiveRecord::Migration
  def self.up
    create_table :post237s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post237s
  end
end
