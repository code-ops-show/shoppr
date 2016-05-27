# This migration comes from spree (originally 20150113002122)
class CreateSpreePromotionCodes < ActiveRecord::Migration
  def change
    create_table :spree_promotion_codes do |t|
      t.references :promotion, index: true, null: false
      t.string :value, null: false
      t.integer :usage_limit

      t.timestamps null: true
    end

    add_index :spree_promotion_codes, :value, unique: true
  end
end
