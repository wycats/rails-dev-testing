class CreatePost125s < ActiveRecord::Migration
  def self.up
    create_table :post125s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post125s
  end
end
