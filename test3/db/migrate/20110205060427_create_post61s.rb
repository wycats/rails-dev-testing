class CreatePost61s < ActiveRecord::Migration
  def self.up
    create_table :post61s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post61s
  end
end
