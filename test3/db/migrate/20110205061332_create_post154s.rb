class CreatePost154s < ActiveRecord::Migration
  def self.up
    create_table :post154s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post154s
  end
end
