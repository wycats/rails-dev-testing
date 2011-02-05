class CreatePost330s < ActiveRecord::Migration
  def self.up
    create_table :post330s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post330s
  end
end
