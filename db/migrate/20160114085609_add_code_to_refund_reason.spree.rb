# This migration comes from spree (originally 20150205210527)
class AddCodeToRefundReason < ActiveRecord::Migration
  def change
    add_column :spree_refund_reasons, :code, :string
  end
end
