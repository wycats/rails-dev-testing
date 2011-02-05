class CreatePost419s < ActiveRecord::Migration
  def self.up
    create_table :post419s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post419s
  end
end
