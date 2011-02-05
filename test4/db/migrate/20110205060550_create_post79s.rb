class CreatePost79s < ActiveRecord::Migration
  def self.up
    create_table :post79s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post79s
  end
end
