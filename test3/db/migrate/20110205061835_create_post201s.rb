class CreatePost201s < ActiveRecord::Migration
  def self.up
    create_table :post201s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post201s
  end
end
