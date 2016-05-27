# This migration comes from spree (originally 20150113002123)
class CreateAdjustmentPromotionCodeAssociation < ActiveRecord::Migration
  def change
    add_column :spree_adjustments, :promotion_code_id, :integer
    add_index :spree_adjustments, :promotion_code_id
  end
end
