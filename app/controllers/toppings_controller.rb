class ToppingsController < ApplicationController
    
    get '/toppings' do 
        toppings = Topping.all 
        toppings.to_json 
    end
    
    get '/toppings/:id' do 
        topping = Topping.find_by_id(params[:id])
        topping.to_json
    end

    post 'toppings/:id' do 
    Topping.create({
        name: params[:name]
    }).to_json

    end

    patch 'toppings/:id' do
        item_update = Topping.find(params[:id])
        item_update.update(name: params[:name])
        item_update.to_json
        


    end

    delete 'toppings/:id' do 
        item_to_delete = Topping.find(params[:id])
        item_to_delete.destroy
        item_to_delete.to_json

    end
end