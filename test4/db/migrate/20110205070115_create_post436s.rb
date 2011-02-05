class CreatePost436s < ActiveRecord::Migration
  def self.up
    create_table :post436s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post436s
  end
end
