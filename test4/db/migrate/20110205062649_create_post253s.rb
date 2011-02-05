class CreatePost253s < ActiveRecord::Migration
  def self.up
    create_table :post253s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post253s
  end
end
