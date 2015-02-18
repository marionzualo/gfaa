class AdvicesController < ApplicationController
  helper_method :advice

  def new
    @advice = Advice.new
  end

  def create
    advice = Advice.new(params.require(:advice).permit(:text))
    advice.state = 'pending_review'
    advice.save!

    redirect_to root_path
  end

  protected

  def advice
    @advice ||= Advice.find(params[:id])
  end
end
