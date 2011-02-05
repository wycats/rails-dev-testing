class CreatePost423s < ActiveRecord::Migration
  def self.up
    create_table :post423s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post423s
  end
end
