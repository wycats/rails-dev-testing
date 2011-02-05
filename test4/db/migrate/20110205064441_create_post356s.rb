class CreatePost356s < ActiveRecord::Migration
  def self.up
    create_table :post356s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post356s
  end
end
