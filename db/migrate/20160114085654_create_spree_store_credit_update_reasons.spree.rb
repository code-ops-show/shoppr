# This migration comes from spree (originally 20150618212517)
class CreateSpreeStoreCreditUpdateReasons < ActiveRecord::Migration
  def change
    create_table :spree_store_credit_update_reasons do |t|
      t.string :name
      t.timestamps null: true
    end
  end
end
