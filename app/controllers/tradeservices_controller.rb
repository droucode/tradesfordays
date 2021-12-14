class TradeservicesController < ApplicationController
#Before actions are manditory steps to be taken before any actions set out in the controller. 
    before_action :authenticate_user!, :set_tradeservice, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, only:[:new, :edit, :show]


    def index
   # Get request, to route tradeservices. This is the root url/index. 
   # .all is an alias for find.all. It displays all current tradeservice listings in the database.
   # All tradeservices are able to be queried through the index. Eg, created, edited and deleted. 
        @tradeservices = Tradeservice.all
    end
  
    def show  
    # Method used to call the view
    end 
  
    
    def new
    # Route tradeservices/new -  allows the user to create a new tradeservice. 
    # A new instance of TradeservicesController is created, which becomes accessible in the view.  
    # and the rails new method is called. 
        @tradeservice = Tradeservice.new
    end
  
  
    def edit  
    # Get method, route tradeservices/1/edit . The number is representing the number 
    #position of the listing in the database 
    # User requests a form to edit the data and then submits.
    # fetches the tradeservice from the database, stored in @tradeservice so that it can /tradeservice/edit.html.erb
    end
  
    
    def update
    # Update action, re-fretches the tradeservice from the database. 
    # Updated with form data 
    # The params are applied
        @tradeservice = Tradeservice.find(params[:id])
        @tradeservice.update(tradeservice_params) 

    end

    def create 
    # POST parmas. These params are being called _form.html.erb. 
    # Tradeservice = Tradeservice.find params[:tradeservice][:tradeservice_id]
    # Then the user is being redirected to the tradervices_path index.html.erb This is a new request. 
        @tradeservice = Tradeservice.create(tradeservice_params)
        redirect_to tradeservices_path
    end

 

    def destroy 
  # DELETE method, for tradeservice/1. Here the number is representing the postion of the listing in the database. 
  # In the tradeservice databse, the find params has been set as tradeservice :id. 
  # Once the :id has been called apon, the destroy method is being used. 
  # Deleting the database entry and :id. 
  # Then, redirect_to 'tradeservices_path' which is the index page. 
        @tradeservice = Tradeservice.find(params[:id])
        @tradeservice.destroy
        redirect_to tradeservices_path
    end 


   
    private 
    # Best practice: lowing visabliity of methods with private- these are not intented to be actions. 
    # They are used to set up constraints between actions. 
    # The find method finds the first record matching the set params, in this case tradeservice :id. 
    def set_tradeservice
        @tradeservice = Tradeservice.find(params[:id])
    end 

  
    def tradeservice_params
    # These paramiters are set to, only allow these approved attribues from the database set up. 
        params.require(:tradeservice).permit(:picture, :name, :budget, :trade, :description, :status, :location)
    end 

end

