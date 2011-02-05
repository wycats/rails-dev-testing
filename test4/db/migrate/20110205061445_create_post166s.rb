class CreatePost166s < ActiveRecord::Migration
  def self.up
    create_table :post166s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post166s
  end
end
