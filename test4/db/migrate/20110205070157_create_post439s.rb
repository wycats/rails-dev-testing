class CreatePost439s < ActiveRecord::Migration
  def self.up
    create_table :post439s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post439s
  end
end
