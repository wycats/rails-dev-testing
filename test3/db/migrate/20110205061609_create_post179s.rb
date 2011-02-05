class CreatePost179s < ActiveRecord::Migration
  def self.up
    create_table :post179s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post179s
  end
end
