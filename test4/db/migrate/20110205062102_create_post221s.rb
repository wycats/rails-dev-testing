class CreatePost221s < ActiveRecord::Migration
  def self.up
    create_table :post221s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post221s
  end
end
