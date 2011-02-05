class CreatePost40s < ActiveRecord::Migration
  def self.up
    create_table :post40s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post40s
  end
end
