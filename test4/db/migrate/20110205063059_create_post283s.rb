class CreatePost283s < ActiveRecord::Migration
  def self.up
    create_table :post283s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post283s
  end
end
