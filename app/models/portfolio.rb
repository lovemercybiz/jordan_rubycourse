class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react
            where(subtitle: "React JS")
    end
#these two are equivalent but scope is better?
    scope :ruby_on_rails_portfolio_items,  -> { where(subtitle: "Ruby on Rails")}

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "https://via.placeholder.com/600x300/F39A9E.png"
        self.thumb_image ||= "https://via.placeholder.com/250x300/F39A9E.png"
    end
end
