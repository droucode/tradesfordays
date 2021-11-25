class TradeservicesController < ApplicationController


    before_action :authenticate_user!, :set_tradeservice, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, only:[:new, :edit, :show]


    # before_action :authenticate_user!, only: [:restricted]
   
    
    def index
        @tradeservices = Tradeservice.all
    end
  
    def show
    end
  
    def new
        @tradeservice = Tradeservice.new
    end
  
    def edit  
    end
  
    def update
        redirect_to tradeservices_path
    end

    def create 
        @tradeservice = Tradeservice.create(tradeservice_params)
        redirect_to tradeservices_path
    end

  
    def destroy 
        @tradeservice = Tradeservice.find(params[:id])
        @tradeservice.destroy
        redirect_to tradeservices_path
    end 

    private 
    def set_tradeservice
        @tradeservice = Tradeservice.find(params[:id])
    end 

    def tradeservice_params
        params.require(:tradeservice).permit(:picture, :name, :budget, :trade, :description, :status, :location)
    end 

end

