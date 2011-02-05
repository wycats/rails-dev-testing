class CreatePost281s < ActiveRecord::Migration
  def self.up
    create_table :post281s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post281s
  end
end
