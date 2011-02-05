class CreatePost355s < ActiveRecord::Migration
  def self.up
    create_table :post355s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post355s
  end
end
