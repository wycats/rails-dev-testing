class CreatePost231s < ActiveRecord::Migration
  def self.up
    create_table :post231s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :post231s
  end
end
