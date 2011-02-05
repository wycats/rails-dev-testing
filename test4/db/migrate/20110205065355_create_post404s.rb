class CreatePost404s < ActiveRecord::Migration
  def self.up
    create_table :post404s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post404s
  end
end
