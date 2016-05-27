# This migration comes from spree (originally 20150811210350)
class RemoveMandatoryFromAdjustments < ActiveRecord::Migration
  def change
    remove_column :spree_adjustments, :mandatory, :boolean
  end
end
