class Portfolio < ApplicationRecord
    has_many :technologies
    include Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react
            where(subtitle: "React JS")
    end
#these two are equivalent but scope is better?
    scope :ruby_on_rails_portfolio_items,  -> { where(subtitle: "Ruby on Rails")}

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: '600', width: '300') 
        self.thumb_image ||= Placeholder.image_generator(height: '350', width: '250') 
    end
end
