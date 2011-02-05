class CreatePost159s < ActiveRecord::Migration
  def self.up
    create_table :post159s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post159s
  end
end
