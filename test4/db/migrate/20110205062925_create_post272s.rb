class CreatePost272s < ActiveRecord::Migration
  def self.up
    create_table :post272s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post272s
  end
end
