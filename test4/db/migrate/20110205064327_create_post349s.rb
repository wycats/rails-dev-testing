class CreatePost349s < ActiveRecord::Migration
  def self.up
    create_table :post349s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post349s
  end
end
