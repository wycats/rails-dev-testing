class CreatePost55s < ActiveRecord::Migration
  def self.up
    create_table :post55s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post55s
  end
end
