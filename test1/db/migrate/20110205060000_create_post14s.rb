class CreatePost14s < ActiveRecord::Migration
  def self.up
    create_table :post14s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post14s
  end
end
