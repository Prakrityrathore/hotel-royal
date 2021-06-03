class DishController < ApplicationController

    def index
        dishes = Dish.all
    end

    def create 
        dish = Dish.create(dish_params)
        render_success message: 'Dish is available in menu'
    end

    def update
        dish = Dish.update(dish_params)
        render_success message: 'Dish is updated'
    end

    def destroy
        Dish.destroy
        render_success message: 'Dish is deleted from menu'
    end
    
    def dishes
        user = User.find(params[:id])
        dishes = user.dishes
    end
        

    def dish_params
        params.require(:restaurant).permit(:name, :item_category, :price, :quantity)

    end

end
