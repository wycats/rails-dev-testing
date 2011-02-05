class CreatePost30s < ActiveRecord::Migration
  def self.up
    create_table :post30s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post30s
  end
end
