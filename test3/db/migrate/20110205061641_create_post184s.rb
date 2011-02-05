class CreatePost184s < ActiveRecord::Migration
  def self.up
    create_table :post184s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post184s
  end
end
