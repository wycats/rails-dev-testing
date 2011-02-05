class CreatePost1s < ActiveRecord::Migration
  def self.up
    create_table :post1s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post1s
  end
end
