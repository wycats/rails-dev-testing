class CreatePost492s < ActiveRecord::Migration
  def self.up
    create_table :post492s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post492s
  end
end
