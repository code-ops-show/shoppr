# This migration comes from spree (originally 20150112194216)
class AddPositionToStockLocation < ActiveRecord::Migration
  def change
    add_column :spree_stock_locations, :position, :integer, :default => 0
  end
end