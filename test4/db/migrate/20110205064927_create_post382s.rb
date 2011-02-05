class CreatePost382s < ActiveRecord::Migration
  def self.up
    create_table :post382s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post382s
  end
end
