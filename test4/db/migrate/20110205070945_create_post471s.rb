class CreatePost471s < ActiveRecord::Migration
  def self.up
    create_table :post471s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post471s
  end
end
