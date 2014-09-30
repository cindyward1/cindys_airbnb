class RentalsController < ApplicationController

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(params[:rental_params])
    @rental.city = params[:rental][:city]
    @rental.state = params[:rental][:state]
    @rental.base_rate = params[:rental][:base_rate]
    @rental.user_id = current_user.id
    if params[:rental][:has_photo]
      @rental.has_photo = true
      @rental.the_photo = params[:rental][:the_photo]
    end
    @rental.set_default_fields(params[:rental])
    if @rental.save
      flash[:notice] = "The rental has been saved"
      redirect_to rental_path(@rental.id )
    else
      render "new"
    end
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def index
    if current_user.landlord?
      @rentals = Rental.where(:user_id => current_user.id).order(state: :asc, city: :asc)
    else
      @rentals = Rentals.all.order(state: :asc, city: :asc)
    end
  end

  def edit
    @rental = Rental.find(params[:id])
    if current_user.id != @rental.user_id
      redirect_to rental_path(@rental)
    end
  end

  def update
    @rental = Rental.find(params[:id])
    if current_user.id != @rental.user_id
      flash[:alert] = "You may only edit your own rentals"
      redirect_to rental_path(@rental)
    elsif !params[:rental].nil?
        if @rental.update(:rental_params)
          flash[:notice] = "The rental has been updated"
          redirect_to landlord_return_to_path
        else
          render 'edit'
        end
    else
      flash[:notice] = "Nothing was updated"
      redirect_to landlord_return_to_path
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    if current_user.id != @rental.user_id
      flash[:alert] = "You may only delete your own rentals"
      redirect_to rental_path(@rental)
    else
      @rental.destroy
      flash[:notice] = "The rental was deleted"
      redirect_to landlord_return_to_path
    end
  end
end
