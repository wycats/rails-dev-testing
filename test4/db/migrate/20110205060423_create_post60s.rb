class CreatePost60s < ActiveRecord::Migration
  def self.up
    create_table :post60s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post60s
  end
end
