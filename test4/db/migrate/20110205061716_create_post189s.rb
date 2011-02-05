class CreatePost189s < ActiveRecord::Migration
  def self.up
    create_table :post189s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post189s
  end
end
