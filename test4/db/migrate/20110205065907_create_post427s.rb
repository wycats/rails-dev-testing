class CreatePost427s < ActiveRecord::Migration
  def self.up
    create_table :post427s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post427s
  end
end
