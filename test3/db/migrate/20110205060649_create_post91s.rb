class CreatePost91s < ActiveRecord::Migration
  def self.up
    create_table :post91s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post91s
  end
end
