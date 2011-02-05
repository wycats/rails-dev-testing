class CreatePost81s < ActiveRecord::Migration
  def self.up
    create_table :post81s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post81s
  end
end
