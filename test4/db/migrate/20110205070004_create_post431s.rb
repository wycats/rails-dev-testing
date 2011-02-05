class CreatePost431s < ActiveRecord::Migration
  def self.up
    create_table :post431s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post431s
  end
end
