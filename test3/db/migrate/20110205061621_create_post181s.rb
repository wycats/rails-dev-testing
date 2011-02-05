class CreatePost181s < ActiveRecord::Migration
  def self.up
    create_table :post181s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post181s
  end
end
