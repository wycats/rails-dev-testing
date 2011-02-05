class CreatePost169s < ActiveRecord::Migration
  def self.up
    create_table :post169s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post169s
  end
end
