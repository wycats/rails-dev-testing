class CreatePost219s < ActiveRecord::Migration
  def self.up
    create_table :post219s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post219s
  end
end
