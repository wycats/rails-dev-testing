class CreatePost366s < ActiveRecord::Migration
  def self.up
    create_table :post366s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post366s
  end
end
