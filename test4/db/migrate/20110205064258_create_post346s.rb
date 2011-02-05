class CreatePost346s < ActiveRecord::Migration
  def self.up
    create_table :post346s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post346s
  end
end
