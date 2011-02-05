class CreatePost325s < ActiveRecord::Migration
  def self.up
    create_table :post325s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post325s
  end
end
