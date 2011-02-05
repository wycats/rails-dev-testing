class CreatePost93s < ActiveRecord::Migration
  def self.up
    create_table :post93s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post93s
  end
end
