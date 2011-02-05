class CreatePost263s < ActiveRecord::Migration
  def self.up
    create_table :post263s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post263s
  end
end
