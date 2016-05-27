# This migration comes from spree (originally 20150127161843)
class CreateOrderStockLocations < ActiveRecord::Migration
  def change
    create_table :spree_order_stock_locations do |t|
      t.integer :order_id
      t.integer :variant_id
      t.integer :quantity
      t.integer :stock_location_id
      t.boolean :shipment_fulfilled, null: false, default: false
      t.timestamps null: true
    end
  end
end
