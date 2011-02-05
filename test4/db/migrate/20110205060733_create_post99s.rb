class CreatePost99s < ActiveRecord::Migration
  def self.up
    create_table :post99s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post99s
  end
end
