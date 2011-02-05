class CreatePost287s < ActiveRecord::Migration
  def self.up
    create_table :post287s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post287s
  end
end
