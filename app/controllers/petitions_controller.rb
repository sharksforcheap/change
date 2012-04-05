class PetitionsController < ApplicationController
  def new
    @petition = Petition.new
  end

  def create
    @petition = current_user.petitions.build(params[:petition])
    @petition.save
    redirect_to (petitions_path)
  end

  def index
    @petitions = Petition.all
  end

  def update
    @petition = Petition.find(params[:id])
    @petition.description = params[:petition][:description]
    @petition.save
    redirect_to (petitions_path)
  end

  def edit
    @petition = Petition.find(params[:id])
  end
end
