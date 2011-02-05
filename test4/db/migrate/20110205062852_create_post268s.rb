class CreatePost268s < ActiveRecord::Migration
  def self.up
    create_table :post268s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post268s
  end
end
