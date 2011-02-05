class CreatePost440s < ActiveRecord::Migration
  def self.up
    create_table :post440s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post440s
  end
end
