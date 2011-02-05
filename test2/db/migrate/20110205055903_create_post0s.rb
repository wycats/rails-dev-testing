class CreatePost0s < ActiveRecord::Migration
  def self.up
    create_table :post0s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post0s
  end
end
