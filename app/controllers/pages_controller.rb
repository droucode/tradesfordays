class PagesController < ApplicationController
  
  before_action :authenticate_user!, only: [:restricted]
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
