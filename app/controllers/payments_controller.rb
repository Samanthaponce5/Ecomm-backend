class PaymentsController < ApplicationController
    def index
        payments = Payment.all
        render json: payments, except: [:created_at, :updated_at]
    end
    
    def show
        payment = Payment.find_by(id: params[:id])
        if payment
            render json: payment,except:[:created_at,:updated_at]
        else
            render json: { message: 'No payment found with that id' }
        end
    end 
end
