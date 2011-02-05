class CreatePost196s < ActiveRecord::Migration
  def self.up
    create_table :post196s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post196s
  end
end
