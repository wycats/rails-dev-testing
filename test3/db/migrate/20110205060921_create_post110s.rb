class CreatePost110s < ActiveRecord::Migration
  def self.up
    create_table :post110s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post110s
  end
end
