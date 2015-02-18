class AdvicesController < ApplicationController
  helper_method :advice

  protected

  def advice
    @advice ||= Advice.find(params[:id])
  end
end
