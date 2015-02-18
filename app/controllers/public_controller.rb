class PublicController < ApplicationController

  def index
    redirect_to advice_path(random_advice_id)
  end
end
