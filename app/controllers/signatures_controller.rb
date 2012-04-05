class SignaturesController < ApplicationController
  def create
  	@signature = Signature.new
  	@signature.user_id = current_user.id
  	puts params
  	@signature.petition_id = params[:format]
  	@signature.save
    redirect_to (petitions_path)
  end
end
