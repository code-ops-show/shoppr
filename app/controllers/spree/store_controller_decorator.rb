Spree::StoreController.class_eval do
  before_filter :load_taxonomies

  def load_taxonomies
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
end
