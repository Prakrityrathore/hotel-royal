class DashboardController < ApplicationController
    before_action: set_restaurant

    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            render_success message:'Restaurant created successfully'
        else
            render_error message:'Trouble creating new Restaurant', data: {@restaurant.errors.full_messages}
        end
    end

    def update
        @restaurant = Restaurant.update(resturant_params)
        render_success message: 'Restaurant information updated successfully'
    end

    def destroy
        @restaurant.destroy
        render_success message: ' Restaurant deleted successfully'
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :email, :phone_number, :opening_hours, :home_deliveries, :accept_reservation)
    end
end
