class CreatePost400s < ActiveRecord::Migration
  def self.up
    create_table :post400s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post400s
  end
end
