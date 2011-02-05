class CreatePost357s < ActiveRecord::Migration
  def self.up
    create_table :post357s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post357s
  end
end
