class CreatePost224s < ActiveRecord::Migration
  def self.up
    create_table :post224s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post224s
  end
end
