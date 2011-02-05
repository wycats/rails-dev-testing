class CreatePost398s < ActiveRecord::Migration
  def self.up
    create_table :post398s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post398s
  end
end
