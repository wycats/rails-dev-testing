class CreatePost292s < ActiveRecord::Migration
  def self.up
    create_table :post292s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post292s
  end
end
