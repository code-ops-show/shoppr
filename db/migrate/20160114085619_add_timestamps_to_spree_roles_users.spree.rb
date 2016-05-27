# This migration comes from spree (originally 20150305210403)
class AddTimestampsToSpreeRolesUsers < ActiveRecord::Migration
  def change
    add_column :spree_roles_users, :id, :primary_key
    add_column :spree_roles_users, :created_at, :datetime
    add_column :spree_roles_users, :updated_at, :datetime
  end
end
