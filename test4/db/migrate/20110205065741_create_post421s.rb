class CreatePost421s < ActiveRecord::Migration
  def self.up
    create_table :post421s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post421s
  end
end
