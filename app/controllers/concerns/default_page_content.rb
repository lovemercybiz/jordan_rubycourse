module DefaultPageContent
    extend ActiveSupport::Concern

    included do
         before_action  :set_page_defaults
    end

    def set_page_defaults
            @page_title = "Ruby Portfolio | My Portfolio Website"
            @seo_keywords = "Love Mercy Portfolio"
    end
    
end