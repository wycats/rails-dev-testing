class CreatePost270s < ActiveRecord::Migration
  def self.up
    create_table :post270s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post270s
  end
end
