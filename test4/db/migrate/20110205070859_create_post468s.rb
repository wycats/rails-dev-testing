class CreatePost468s < ActiveRecord::Migration
  def self.up
    create_table :post468s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post468s
  end
end
