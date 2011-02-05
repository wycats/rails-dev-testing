class CreatePost123s < ActiveRecord::Migration
  def self.up
    create_table :post123s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post123s
  end
end
