class CreatePost488s < ActiveRecord::Migration
  def self.up
    create_table :post488s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post488s
  end
end
