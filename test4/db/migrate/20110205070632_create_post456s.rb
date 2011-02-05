class CreatePost456s < ActiveRecord::Migration
  def self.up
    create_table :post456s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post456s
  end
end
