class CreatePost3s < ActiveRecord::Migration
  def self.up
    create_table :post3s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post3s
  end
end
