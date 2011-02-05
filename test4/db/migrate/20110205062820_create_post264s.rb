class CreatePost264s < ActiveRecord::Migration
  def self.up
    create_table :post264s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post264s
  end
end
