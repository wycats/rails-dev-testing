class CreatePost139s < ActiveRecord::Migration
  def self.up
    create_table :post139s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post139s
  end
end
