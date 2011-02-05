class CreatePost56s < ActiveRecord::Migration
  def self.up
    create_table :post56s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post56s
  end
end
