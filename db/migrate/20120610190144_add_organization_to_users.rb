class AddOrganizationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :organization_id, :integer
    add_column :users, :organization_type, :string, :limit => 60
    
    add_index :users, :organization_id
    add_index :users, :organization_type
  end

end
