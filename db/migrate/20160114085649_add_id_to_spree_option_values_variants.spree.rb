# This migration comes from spree (originally 20150610182638)
class AddIdToSpreeOptionValuesVariants < ActiveRecord::Migration
  def change
    add_column :spree_option_values_variants, :id, :primary_key
  end
end
