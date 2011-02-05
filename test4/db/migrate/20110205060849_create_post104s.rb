class CreatePost104s < ActiveRecord::Migration
  def self.up
    create_table :post104s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post104s
  end
end
