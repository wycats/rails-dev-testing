class CreatePost74s < ActiveRecord::Migration
  def self.up
    create_table :post74s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post74s
  end
end
