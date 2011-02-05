class CreatePost475s < ActiveRecord::Migration
  def self.up
    create_table :post475s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post475s
  end
end
