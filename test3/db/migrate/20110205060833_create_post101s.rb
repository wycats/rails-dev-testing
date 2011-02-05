class CreatePost101s < ActiveRecord::Migration
  def self.up
    create_table :post101s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post101s
  end
end
