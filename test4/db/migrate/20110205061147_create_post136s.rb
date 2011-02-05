class CreatePost136s < ActiveRecord::Migration
  def self.up
    create_table :post136s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post136s
  end
end
