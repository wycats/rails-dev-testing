class CreatePost216s < ActiveRecord::Migration
  def self.up
    create_table :post216s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post216s
  end
end
