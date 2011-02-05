class CreatePost415s < ActiveRecord::Migration
  def self.up
    create_table :post415s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post415s
  end
end
