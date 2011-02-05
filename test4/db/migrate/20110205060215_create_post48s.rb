class CreatePost48s < ActiveRecord::Migration
  def self.up
    create_table :post48s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post48s
  end
end
