class CreatePost108s < ActiveRecord::Migration
  def self.up
    create_table :post108s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post108s
  end
end
