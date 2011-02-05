class CreatePost249s < ActiveRecord::Migration
  def self.up
    create_table :post249s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post249s
  end
end
