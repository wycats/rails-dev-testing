class CreatePost11s < ActiveRecord::Migration
  def self.up
    create_table :post11s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post11s
  end
end
