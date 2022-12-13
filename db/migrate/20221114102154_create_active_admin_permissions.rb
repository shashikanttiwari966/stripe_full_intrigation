class CreateActiveAdminPermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :active_admin_permissions do |t|
      t.integer :managed_resource_id, null: false
      t.integer :role,                null: false, limit: 1, default: 0
      t.integer :state,               null: false, limit: 1, default: 0

      t.timestamps null: false
    end

    add_index :active_admin_permissions, [:managed_resource_id, :role], unique: true, name: "active_admin_permissions_index"
  end
end
