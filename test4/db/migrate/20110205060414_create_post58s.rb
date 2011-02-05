class CreatePost58s < ActiveRecord::Migration
  def self.up
    create_table :post58s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post58s
  end
end
