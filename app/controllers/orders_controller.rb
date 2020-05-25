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

    def create 
        order = Order.create(order_params)
        render json: order
    end

    private
    def order_params
        params.require(:order).permit(:confirmation_number,:product_id,:user_id)
    end
end
