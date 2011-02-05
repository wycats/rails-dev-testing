class CreatePost137s < ActiveRecord::Migration
  def self.up
    create_table :post137s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post137s
  end
end
