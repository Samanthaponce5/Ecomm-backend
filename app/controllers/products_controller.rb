class ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products, except: [:created_at, :updated_at]
    end
    
    def show
        product = Product.find_by(id: params[:id])
        if product
            render json: product,except:[:created_at,:updated_at]
        else
            render json: { message: 'No product found with that id' }
        end
    end 
end
