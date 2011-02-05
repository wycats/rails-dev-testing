class CreatePost285s < ActiveRecord::Migration
  def self.up
    create_table :post285s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post285s
  end
end
