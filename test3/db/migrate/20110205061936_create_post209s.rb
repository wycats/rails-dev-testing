class CreatePost209s < ActiveRecord::Migration
  def self.up
    create_table :post209s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post209s
  end
end
