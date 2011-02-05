class CreatePost410s < ActiveRecord::Migration
  def self.up
    create_table :post410s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post410s
  end
end
