class CreatePost383s < ActiveRecord::Migration
  def self.up
    create_table :post383s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post383s
  end
end
