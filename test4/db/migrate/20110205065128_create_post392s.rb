class CreatePost392s < ActiveRecord::Migration
  def self.up
    create_table :post392s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post392s
  end
end
