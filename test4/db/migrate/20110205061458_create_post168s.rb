class CreatePost168s < ActiveRecord::Migration
  def self.up
    create_table :post168s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post168s
  end
end
