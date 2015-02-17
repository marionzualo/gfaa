class PublicController < ApplicationController
  helper_method :advice

  protected

  def generate_advice(id)
    chain = Advice.order('RANDOM()')
    chain = chain.where('id != (?)', id) if id.present?

    chain.first
  end

  def advice
    @advice ||= generate_advice(params[:id])
  end
end
