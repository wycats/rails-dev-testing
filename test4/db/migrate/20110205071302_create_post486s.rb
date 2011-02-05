class CreatePost486s < ActiveRecord::Migration
  def self.up
    create_table :post486s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post486s
  end
end
