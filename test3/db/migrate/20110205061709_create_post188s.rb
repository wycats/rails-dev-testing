class CreatePost188s < ActiveRecord::Migration
  def self.up
    create_table :post188s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post188s
  end
end
