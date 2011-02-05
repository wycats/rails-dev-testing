class CreatePost445s < ActiveRecord::Migration
  def self.up
    create_table :post445s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post445s
  end
end
