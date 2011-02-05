class CreatePost195s < ActiveRecord::Migration
  def self.up
    create_table :post195s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post195s
  end
end
