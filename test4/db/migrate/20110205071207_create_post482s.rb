class CreatePost482s < ActiveRecord::Migration
  def self.up
    create_table :post482s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post482s
  end
end
