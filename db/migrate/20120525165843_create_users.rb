class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :email,              :null => false, :default => ""
      t.boolean :bookstore_admin, :default => false

      t.timestamps
    end
  end
end
