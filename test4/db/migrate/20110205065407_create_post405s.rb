class CreatePost405s < ActiveRecord::Migration
  def self.up
    create_table :post405s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post405s
  end
end
