# This migration comes from spree (originally 20150227161934)
class AddOrderIdsToAdjustmentsWhereMissing < ActiveRecord::Migration
  def up
    Spree::Adjustment.where(order_id: nil, adjustable_type: 'Spree::Order').update_all("order_id = adjustable_id")
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
