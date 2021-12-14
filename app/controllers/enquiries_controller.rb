class EnquiriesController < ApplicationController
#before actions are manditory steps to be taken before any actions set out in the controller. 
    before_action :authenticate_user!, :set_enquiry, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, only:[:new, :edit, :show]
 

    def index
   # Get request, to route enquires.  
   # .all is an alias for find.all. It displays all current enquiries in the database.
        @enquiries = Enquiry.all
    end
  
    def show
    # Method used to call the view
    end
  
    def new
    # Route enquiries/new -  allows the user to create an enquiry. 
    # A new instance of EnquiriesController is created, which becomes accessible in the view.  
    # and the rails new method is called. 
        @enquiry = Enquiry.new
    end
  
    def edit 
    end
  
    def update
    # Update action, re-fretches the enquiries from the database. 
    # Updated with form data 
    # The params are applied
    # Then, redirect_to 'enquries_path'. This is a new request. 
        @enquiry = Enquiry.find(params[:id])
        @enquiry.update(enquiry_params) 
        redirect_to enquiries_path
    
    end

    def create 
    # POST parmas. These params are being called _form.html.erb. 
    # enquiry = Enquiry.find params[:enquiries][:enquiriy_id]
    # Then the user is being redirected to the enquries_path. This is a new request. 
        @enquiry = Enquiry.create(enquiry_params)
        redirect_to enquiries_path
    end

  
    def destroy 
    # DELETE method. 
    # In the enquiries database, the find params has been set as enquiries :id. 
    # Once the :id has been called apon, the destroy method is being used. 
    # Deleting the database entry and :id. 
    # Then, redirect_to 'enquries_path'. 
        @enquiry = Enquiry.find(params[:id])
        @enquiry.destroy
        redirect_to enquiries_path
    end 

    private 
    # Best practice: lowing visabliity of methods with private- these are not intented to be actions. 
    # They are used to set up constraints between actions. 
    # The find method finds the first record matching the set params, in this case enquries :id. 
    def set_enquiry
        @enquiry = Enquiry.find(params[:id])
    end 

    def enquiry_params
    # These paramiters are set to, only allow these approved attribues from the database set up.
        params.require(:enquiry).permit(:tasks, :date, :address)
    end 

end
