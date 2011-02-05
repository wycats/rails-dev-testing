class CreatePost422s < ActiveRecord::Migration
  def self.up
    create_table :post422s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post422s
  end
end
