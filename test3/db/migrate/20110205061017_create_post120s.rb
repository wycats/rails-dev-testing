class CreatePost120s < ActiveRecord::Migration
  def self.up
    create_table :post120s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post120s
  end
end
