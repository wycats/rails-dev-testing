class CreatePost303s < ActiveRecord::Migration
  def self.up
    create_table :post303s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post303s
  end
end
