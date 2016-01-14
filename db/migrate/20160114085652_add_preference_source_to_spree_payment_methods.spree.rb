# This migration comes from spree (originally 20150616204659)
class AddPreferenceSourceToSpreePaymentMethods < ActiveRecord::Migration
  def change
    add_column :spree_payment_methods, :preference_source, :string
  end
end
