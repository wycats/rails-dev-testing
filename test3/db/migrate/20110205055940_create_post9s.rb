class CreatePost9s < ActiveRecord::Migration
  def self.up
    create_table :post9s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post9s
  end
end
