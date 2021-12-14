class PagesController < ApplicationController
  # This controller is responsible for devise and loging in and regestering customers. 
  before_action :authenticate_user!, only: [:restricted]
  # there is no code implimentation in terms of CRUD
  def home
  end

  def restricted
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end


end
