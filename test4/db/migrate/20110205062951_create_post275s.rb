class CreatePost275s < ActiveRecord::Migration
  def self.up
    create_table :post275s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post275s
  end
end
