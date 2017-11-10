class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: '')
  end

  # def show
  #   @customer = Customer.find(params[:id])
  # end
end
