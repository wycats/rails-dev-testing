class CreatePost49s < ActiveRecord::Migration
  def self.up
    create_table :post49s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post49s
  end
end
