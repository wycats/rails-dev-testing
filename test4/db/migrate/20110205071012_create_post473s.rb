class CreatePost473s < ActiveRecord::Migration
  def self.up
    create_table :post473s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post473s
  end
end
