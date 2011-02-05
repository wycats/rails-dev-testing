class CreatePost112s < ActiveRecord::Migration
  def self.up
    create_table :post112s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post112s
  end
end
