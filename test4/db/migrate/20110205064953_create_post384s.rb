class CreatePost384s < ActiveRecord::Migration
  def self.up
    create_table :post384s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post384s
  end
end
