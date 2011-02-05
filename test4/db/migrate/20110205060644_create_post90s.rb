class CreatePost90s < ActiveRecord::Migration
  def self.up
    create_table :post90s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post90s
  end
end
