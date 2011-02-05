class CreatePost199s < ActiveRecord::Migration
  def self.up
    create_table :post199s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post199s
  end
end
