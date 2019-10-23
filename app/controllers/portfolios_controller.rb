class PortfoliosController < ApplicationController
        def index 
            @portfolio_items = Portfolio.all #making this available to the view
        end
end
