class AddLoginUser < ActiveRecord::Migration
  def change
    add_column :users, :login, :string, :limit => 50
  end
end
