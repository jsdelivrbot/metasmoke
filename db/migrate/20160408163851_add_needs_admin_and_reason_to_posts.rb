class AddNeedsAdminAndReasonToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :needs_admin, :boolean
    add_column :posts, :admin_reason, :string
  end
end
