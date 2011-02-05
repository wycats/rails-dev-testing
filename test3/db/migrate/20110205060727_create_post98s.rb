class CreatePost98s < ActiveRecord::Migration
  def self.up
    create_table :post98s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post98s
  end
end
