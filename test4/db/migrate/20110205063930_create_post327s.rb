class CreatePost327s < ActiveRecord::Migration
  def self.up
    create_table :post327s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post327s
  end
end
