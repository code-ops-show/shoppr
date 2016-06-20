module Spree::BaseHelper
  def layout_partial
    if controller.devise_controller?
      'spree/base/devise'
    else
      'spree/base/application'
    end
  end

  def flash_messages(opts = {})
    ignore_types = ["order_completed"].concat(Array(opts[:ignore_types]).map(&:to_s) || [])

    flash.each do |msg_type, text|
      unless ignore_types.include?(msg_type)
        concat(content_tag :div, text, class: "flash alert alert-#{msg_type}")
      end
    end
    nil
  end

  def logo(image_path=Spree::Config[:logo], img_options: {}, link_options: {})
  	link_to image_tag(image_path, img_options), spree.root_path, link_options
  end

  def nav_tree(root_taxon, current_taxon, max_level = 1)
    return '' if max_level < 1 || root_taxon.children.empty?
    content_tag :ul, class: 'dropdown-menu' do
      root_taxon.children.map do |taxon|
        active = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'active' : nil
        content_tag :li, class: active do
          link_to(taxon.name, seo_url(taxon)) +
          nav_tree(taxon, current_taxon, max_level - 1)
        end
      end.join("\n").html_safe
    end
  end

end
