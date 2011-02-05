class CreatePost388s < ActiveRecord::Migration
  def self.up
    create_table :post388s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post388s
  end
end
