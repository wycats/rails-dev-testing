class CreatePost19s < ActiveRecord::Migration
  def self.up
    create_table :post19s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post19s
  end
end
