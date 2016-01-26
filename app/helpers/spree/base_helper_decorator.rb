module Spree::BaseHelper
  def logo(image_path=Spree::Config[:logo], img_options: {}, link_options: {})
  	link_to image_tag(image_path, img_options), spree.root_path, link_options
  end
end
