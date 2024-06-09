module DefaultPageContent
  extend ActiveSupport::Concern
  included do
    before_action :set_default_pages
  end

  def set_default_pages
    @page_title = "Yohannes portofolio here"
    @seo_keywords = "HH Mulaw"
  end

end