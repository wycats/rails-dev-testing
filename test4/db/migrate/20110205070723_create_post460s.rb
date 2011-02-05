class CreatePost460s < ActiveRecord::Migration
  def self.up
    create_table :post460s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post460s
  end
end
