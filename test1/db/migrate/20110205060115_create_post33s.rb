class CreatePost33s < ActiveRecord::Migration
  def self.up
    create_table :post33s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post33s
  end
end
