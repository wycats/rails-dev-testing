class CreatePost87s < ActiveRecord::Migration
  def self.up
    create_table :post87s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post87s
  end
end
