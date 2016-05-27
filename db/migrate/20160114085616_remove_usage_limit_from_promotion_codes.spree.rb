# This migration comes from spree (originally 20150303212826)
class RemoveUsageLimitFromPromotionCodes < ActiveRecord::Migration
  def change
    remove_column :spree_promotion_codes, :usage_limit, :integer
  end
end
