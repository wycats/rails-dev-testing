class CreatePost235s < ActiveRecord::Migration
  def self.up
    create_table :post235s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post235s
  end
end
