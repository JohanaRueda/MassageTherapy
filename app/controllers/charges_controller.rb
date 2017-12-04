class ChargesController < ApplicationController
  def thanks
  end
  
  def new
  end

  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail], 
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id, 
                                      amount: params[:amount].to_i,
                                      description: params[:description])
    redirect_to rosters_path(roster: {user_id: session[:user_id], offering_id: params[:offering_id]}), method: :post
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end