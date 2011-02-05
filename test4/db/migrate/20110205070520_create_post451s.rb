class CreatePost451s < ActiveRecord::Migration
  def self.up
    create_table :post451s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post451s
  end
end
