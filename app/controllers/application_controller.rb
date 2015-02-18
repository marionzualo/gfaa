class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :random_advice_id

  def random_advice_id(other_id = nil)
    chain = Advice.order('RANDOM()')
    chain = chain.where('id != (?)', other_id) if other_id.present?

    chain.first.id
  end
end
