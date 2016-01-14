# This migration comes from spree (originally 20150429125822)
class RenameStockTransferReference < ActiveRecord::Migration
  def change
    rename_column :spree_stock_transfers, :reference, :description
  end
end
