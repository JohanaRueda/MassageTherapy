class ChargesController < ApplicationController
  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail],
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id,
                                      amount: params[:amount].to_i,
                                      description: params[:description])

    @roster = Roster.new(user_id: session[:user_id], offering_id: params[:offering_id])

    if @roster.save
      @offering = Offering.find(@roster.offering_id)
      flash[:success] = "Registered user " + @roster.user_id.to_s + " for course offering " + @roster.offering_id.to_s
      redirect_to course_path(@offering.course_id)
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end