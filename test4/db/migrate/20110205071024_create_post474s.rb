class CreatePost474s < ActiveRecord::Migration
  def self.up
    create_table :post474s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post474s
  end
end
