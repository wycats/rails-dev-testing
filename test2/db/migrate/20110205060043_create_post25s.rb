class CreatePost25s < ActiveRecord::Migration
  def self.up
    create_table :post25s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post25s
  end
end
