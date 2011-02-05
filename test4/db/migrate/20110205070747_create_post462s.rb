class CreatePost462s < ActiveRecord::Migration
  def self.up
    create_table :post462s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post462s
  end
end
