class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.react
            where(subtitle: "React JS")
    end
#these two are equivalent but scope is better?
    scope :ruby_on_rails_portfolio_items,  -> { where(subtitle: "Ruby on Rails")}
end
