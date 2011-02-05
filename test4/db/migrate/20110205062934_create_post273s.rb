class CreatePost273s < ActiveRecord::Migration
  def self.up
    create_table :post273s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post273s
  end
end
