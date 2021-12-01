class EnquiriesController < ApplicationController
#before actions are manditory steps to be taken before any actions set out in the controller. 
    before_action :authenticate_user!, :set_enquiry, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, only:[:new, :edit, :show]
   #CRUD 
    def index
        @enquiries = Enquiry.all
    end
  
    def show
    end
  
    def new
        @enquiry = Enquiry.new
    end
  
    def edit  
    end
  
    def update
        @enquiry = Enquiry.find(params[:id])
        @enquiry.update(enquiry_params) 
        redirect_to enquiries_path
    
    end

    def create 
        @enquiry = Enquiry.create(enquiry_params)
        redirect_to enquiries_path
    end

  
    def destroy 
        @enquiry = Enquiry.find(params[:id])
        @enquiry.destroy
        redirect_to enquiries_path
    end 

    private 
    def set_enquiry
        @enquiry = Enquiry.find(params[:id])
    end 

    def enquiry_params
        params.require(:enquiry).permit(:tasks, :date, :address)
    end 

end
