class CreateOrganizationsUsersTable < ActiveRecord::Migration
  def self.up
    create_table :organizations_users, :id => false do |t|
       t.references :organization
       t.references :user
    end
    add_index :organizations_users, [:organization_id, :user_id]
    add_index :organizations_users, [:user_id, :organization_id]
  end

  def self.down
    drop_table :organizations_users
  end
end
