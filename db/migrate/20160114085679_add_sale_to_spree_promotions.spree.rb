# This migration comes from spree (originally 20151021113730)
class AddSaleToSpreePromotions < ActiveRecord::Migration
  def change
    add_column :spree_promotions, :apply_automatically, :boolean, default: false
    add_index :spree_promotions, :apply_automatically
  end
end
