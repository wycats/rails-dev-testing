class CreatePost308s < ActiveRecord::Migration
  def self.up
    create_table :post308s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post308s
  end
end
