class PublicController < ApplicationController
  protected

  def advice
    @advice ||= Advice.find(random_advice_id)
  end
  helper_method :advice
end
