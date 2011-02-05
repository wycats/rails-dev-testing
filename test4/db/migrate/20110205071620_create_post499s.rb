class CreatePost499s < ActiveRecord::Migration
  def self.up
    create_table :post499s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post499s
  end
end
