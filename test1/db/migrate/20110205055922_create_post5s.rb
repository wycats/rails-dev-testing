class CreatePost5s < ActiveRecord::Migration
  def self.up
    create_table :post5s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post5s
  end
end
