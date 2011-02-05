class CreatePost408s < ActiveRecord::Migration
  def self.up
    create_table :post408s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post408s
  end
end
