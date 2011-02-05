class CreatePost435s < ActiveRecord::Migration
  def self.up
    create_table :post435s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post435s
  end
end
