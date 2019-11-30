class PortfoliosController < ApplicationController
        def index 
            @portfolio_items = Portfolio.all #making this available to the view
        end

        def react
          @react_portfolio_items = Portfolio.react
        end

        # def 
        # end
        def new
            @portfolio_item = Portfolio.new #before he added this code an red screen error would pop up however that didnt  happen for  mine. not sure if this code is super important? it wont let me create though
        end

        def create
            @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
               
            respond_to do |format|
                    if @portfolio_item.save
                    format.html { redirect_to portfolios_path, notice: 'Your Portfolio item is live.' }
                    # format.json { render :show, status: :created, location: @blog }
                    else
                    format.html { render :new }
                    # format.json { render json: @blog.errors, status: :unprocessable_entity }
                    end
                end
        end

        def edit
            @portfolio_item = Portfolio.find(params[:id])
        end

        def update
            @portfolio_item = Portfolio.find(params[:id])
            
            respond_to do |format|
              if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
                format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
              else
                format.html { render :edit }
              end
            end
          end

          def show
            @portfolio_item = Portfolio.find(params[:id])
          end

          def destroy    
            @portfolio_item = Portfolio.find(params[:id])#Perform lookup

            @portfolio_item.destroy #this will destroy/delete the record

              # Redirect
                respond_to do |format|
                  format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully destroyed.' }
                end
          end

end
