class CreatePost461s < ActiveRecord::Migration
  def self.up
    create_table :post461s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post461s
  end
end
