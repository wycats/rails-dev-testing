class CreatePost245s < ActiveRecord::Migration
  def self.up
    create_table :post245s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post245s
  end
end
