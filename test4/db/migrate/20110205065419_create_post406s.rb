class CreatePost406s < ActiveRecord::Migration
  def self.up
    create_table :post406s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post406s
  end
end
