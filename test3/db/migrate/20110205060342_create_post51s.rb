class CreatePost51s < ActiveRecord::Migration
  def self.up
    create_table :post51s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post51s
  end
end
