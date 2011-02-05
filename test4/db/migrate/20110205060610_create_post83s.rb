class CreatePost83s < ActiveRecord::Migration
  def self.up
    create_table :post83s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post83s
  end
end
