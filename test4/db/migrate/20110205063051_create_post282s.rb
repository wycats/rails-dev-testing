class CreatePost282s < ActiveRecord::Migration
  def self.up
    create_table :post282s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post282s
  end
end
