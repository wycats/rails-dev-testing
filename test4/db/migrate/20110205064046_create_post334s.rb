class CreatePost334s < ActiveRecord::Migration
  def self.up
    create_table :post334s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post334s
  end
end
