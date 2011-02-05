class CreatePost369s < ActiveRecord::Migration
  def self.up
    create_table :post369s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post369s
  end
end
