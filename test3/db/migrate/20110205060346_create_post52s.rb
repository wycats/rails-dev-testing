class CreatePost52s < ActiveRecord::Migration
  def self.up
    create_table :post52s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post52s
  end
end
