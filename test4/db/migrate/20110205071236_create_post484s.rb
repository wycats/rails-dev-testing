class CreatePost484s < ActiveRecord::Migration
  def self.up
    create_table :post484s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post484s
  end
end
