class CreatePost70s < ActiveRecord::Migration
  def self.up
    create_table :post70s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post70s
  end
end
