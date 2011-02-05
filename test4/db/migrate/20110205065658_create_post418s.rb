class CreatePost418s < ActiveRecord::Migration
  def self.up
    create_table :post418s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post418s
  end
end
