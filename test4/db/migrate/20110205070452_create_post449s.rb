class CreatePost449s < ActiveRecord::Migration
  def self.up
    create_table :post449s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post449s
  end
end
