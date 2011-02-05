class CreatePost305s < ActiveRecord::Migration
  def self.up
    create_table :post305s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post305s
  end
end
