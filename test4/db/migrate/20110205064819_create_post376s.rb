class CreatePost376s < ActiveRecord::Migration
  def self.up
    create_table :post376s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post376s
  end
end
