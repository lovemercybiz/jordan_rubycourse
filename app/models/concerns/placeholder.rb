module Placeholder
        extend ActiveSupport::Concern

        def self.image_generator(height:, width:)
             "https://via.placeholder.com/#{height}x#{width}/F39A9E.png"
        end
end