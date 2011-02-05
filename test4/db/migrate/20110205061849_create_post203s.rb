class CreatePost203s < ActiveRecord::Migration
  def self.up
    create_table :post203s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post203s
  end
end
