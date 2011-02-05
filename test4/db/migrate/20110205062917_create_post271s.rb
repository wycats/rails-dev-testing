class CreatePost271s < ActiveRecord::Migration
  def self.up
    create_table :post271s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post271s
  end
end
