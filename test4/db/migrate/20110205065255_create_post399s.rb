class CreatePost399s < ActiveRecord::Migration
  def self.up
    create_table :post399s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post399s
  end
end
