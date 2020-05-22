class OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: orders, except: [:created_at, :updated_at]
    end
    
    def show
        order = Order.find_by(id: params[:id])
        if order
            render json: order,except:[:created_at,:updated_at]
        else
            render json: { message: 'No order found with that id' }
        end
    end 
end
