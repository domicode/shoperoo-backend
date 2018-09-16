class Api::V1::SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.new(email: params["email"])

    if subscription.save
      render json: { status: 'success' }
    else
      head 500
    end
  end
end
