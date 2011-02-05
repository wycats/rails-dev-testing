class CreatePost89s < ActiveRecord::Migration
  def self.up
    create_table :post89s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post89s
  end
end
