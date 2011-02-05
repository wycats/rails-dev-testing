class CreatePost266s < ActiveRecord::Migration
  def self.up
    create_table :post266s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post266s
  end
end
