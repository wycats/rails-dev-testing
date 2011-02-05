class CreatePost395s < ActiveRecord::Migration
  def self.up
    create_table :post395s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post395s
  end
end
