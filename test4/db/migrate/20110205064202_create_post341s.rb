class CreatePost341s < ActiveRecord::Migration
  def self.up
    create_table :post341s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post341s
  end
end
