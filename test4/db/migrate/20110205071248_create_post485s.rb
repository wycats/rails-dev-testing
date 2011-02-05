class CreatePost485s < ActiveRecord::Migration
  def self.up
    create_table :post485s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post485s
  end
end
