class ChargesController < ApplicationController
  def new
    @amount = 500
    @description = 'Description of charge'
  end

  def create
    amount = 500

    @customer = Stripe::Customer.create(email: params[:stripeEmail],
                                        source: params[:stripeToken])

    @charge = Stripe::Charge.create(customer: @customer.id,
                                    amount: amount,
                                    description: 'Rails Stripe Customer',
                                    currency: 'cad')

    rescue Stripe::CardError => email
      flash[:error] = e.message
      redirect_to new_charge_path
  end
end
