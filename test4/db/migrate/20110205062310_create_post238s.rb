class CreatePost238s < ActiveRecord::Migration
  def self.up
    create_table :post238s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post238s
  end
end
