class CreatePost227s < ActiveRecord::Migration
  def self.up
    create_table :post227s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post227s
  end
end
