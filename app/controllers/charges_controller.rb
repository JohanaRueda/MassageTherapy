class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_description

  def thanks
  end
  
  def new
  end

  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail], 
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id, 
                                      amount: @amount,
                                      description: @description)
    # redirect_to rosters_path(roster: {user_id: session[:user_id], offering_id: @o.id})
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  # def update_amount(amount_in_cents)
  #     puts amount_in_cents
  #     @amount = amount_in_cents
  #     # @O = offering
  # end
    
  private
    def amount_to_be_charged
      @amount = 100
    end
    
    def set_description
      @description = "Registered course"
    end
end