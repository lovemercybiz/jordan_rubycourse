class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show,:update, :destroy] 
  layout 'portfolio'
  access all: [:show, :index, :react], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

        def index 
            @portfolio_items = Portfolio.by_position#making this available to the view
        end

        def sort
            params[:order].each do |key, value|
                  Portfolio.find(value[:id]).update(position: value[:position])
            end

            render body: nil
        end

        def react
          @react_portfolio_items = Portfolio.react
        end

        def new
            @portfolio_item = Portfolio.new #before he added this code an red screen error would pop up however that didnt  happen for  mine. not sure if this code is super important? it wont let me create though
         end

        def create
            @portfolio_item = Portfolio.new(portfolios_params)
               
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
        end

        def update
            respond_to do |format|
              if @portfolio_item.update(portfolios_params)
                format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
              else
                format.html { render :edit }
              end
            end
          end

          def show
          end

          def destroy    
            @portfolio_item.destroy #this will destroy/delete the record

              # Redirect
                respond_to do |format|
                  format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully destroyed.' }
                end
          end

          private

        def  portfolios_params
          params.require(:portfolio).permit( :title, 
                                                                                  :subtitle, 
                                                                                  :body, 
                                                                                  :main_image,
                                                                                  :thumb_image,
                                                                                  technologies_attributes: [ :id, :name, :_destroy]
                                                                                )
        end

        def set_portfolio_item
          @portfolio_item = Portfolio.find(params[:id])
        end

end
