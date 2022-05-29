class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.order(id: :asc).all
  end

  def show
  end

  def new
    @profile = Profile.new
    addr_count = @profile.addresses.length
    (2 - addr_count).times { @profile.addresses.build }
  end

  def create
    @profile = Profile.create(profile_params)
    #finish logic for creating a record
    redirect_to @profile
  end

  def edit
    addr_count = @profile.addresses.length
    (2 - addr_count).times { @profile.addresses.build }
  end

  def update
    #finsih logic for updating the record
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    #finish logic for deleting the record
    @profile.destroy

    redirect_to profiles_path
  end

  private

  def set_profile
    id = params[:id]
    @profile = Profile.find(id)
  end

  def profile_params
    params.require(:profile).permit(
      :name,
      :age,
      :bio,
      addresses_attributes: [:id, :street, :city, :state, :postcode, :_destroy]
    )
  end
end
