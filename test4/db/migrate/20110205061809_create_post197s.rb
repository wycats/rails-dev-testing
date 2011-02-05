class CreatePost197s < ActiveRecord::Migration
  def self.up
    create_table :post197s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post197s
  end
end
