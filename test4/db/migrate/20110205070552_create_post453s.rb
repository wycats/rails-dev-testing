class CreatePost453s < ActiveRecord::Migration
  def self.up
    create_table :post453s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post453s
  end
end
