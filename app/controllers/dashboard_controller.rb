class DashboardController < ApplicationController
    before_action: set_guest

    def index
        @guests = Guest.all
    end

    def show
        guest = Guest.find(params[:id])
    end

    def create
        @guest = Guest.new(guest_params)
        if @guest.save
            render_success message:'Guest created successfully'
        else
            render_error message:'Trouble creating new Guest', data: @guest.errors.full_messages
        end
    end

    def update
        @guest = Guest.update(guest_params)
        render_success message: 'Guest information updated successfully'
    end

    def destroy
        @guest = Guest.destroy
        render_success message: 'Guest information deleted successfully'
    end

    def set_guest
        @guest = Guest.find(params[:id])

    def guest_params
        params.require(:guest).permit(:name, :id, :email, :phone_number, :address, :number_of_persons)
    end
end
