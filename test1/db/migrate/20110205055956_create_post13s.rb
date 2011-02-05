class CreatePost13s < ActiveRecord::Migration
  def self.up
    create_table :post13s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post13s
  end
end
