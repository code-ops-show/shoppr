# This migration comes from spree (originally 20150622144655)
class AddUpdateReasonToStoreCreditEvents < ActiveRecord::Migration
  def change
    add_column :spree_store_credit_events, :update_reason_id, :integer
  end
end
