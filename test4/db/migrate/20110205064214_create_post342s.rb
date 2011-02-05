class CreatePost342s < ActiveRecord::Migration
  def self.up
    create_table :post342s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post342s
  end
end
