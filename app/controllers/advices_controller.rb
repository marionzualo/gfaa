class AdvicesController < ApplicationController
  helper_method :advice

  def new
    @advice = Advice.new
  end

  def show
    advice = Advice.find(params[:id])

    render :json => advice
  end

  def random
    advice = Advice.find(random_advice_id(params[:id]))

    render :json => advice
  end

  def create
    advice = Advice.new(params.require(:advice).permit(:text))
    advice.state = 'pending_review'
    advice.save!

    redirect_to root_path
  end
end
