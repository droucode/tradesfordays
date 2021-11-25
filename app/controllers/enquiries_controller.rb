class EnquiriesController < ApplicationController
    
    before_action :authenticate_user!, :set_enquiry, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, only:[:new, :edit, :show]
    

    def index
        @enquiries = Enquiry.all
    end
  
    def show
    end
  
    def new
        @enquiry = Enquiry.new
    end
  
    def edit
        @enquiry
    
    end
  
    def update
    end

    def create 
        @enquiry = Enquiry.create(enquiry_params)
        redirect_to enquiries_path
    end

  
    def destroy 
    end 

    private 
    def set_enquiry
        @enquiry = Enquiry.find(params[:id])
    end 

    def enquiry_params
        params.require(:enquiry).permit(:task, :date, :address)
    end 

end
