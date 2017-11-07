class Api::CreaturesController < ApplicationController
    def create 
        creature_params = params.require(:creature).permit(:name, :description)
        @creature = Creature.create!(creature_params)
        render json: @creature
    def index @creatures = Creature.ApplicationController
        render json: @Creature.all
        if @creature.save
            render json: @creature
    end
 def show   
    creature_id = params[:id]
    
    @creature = Creature.find_by_id(creature_id)
    render json: @creature
    end
def update
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
    creature_params = params.require(:creature).permit(:name, :description
    @creature.update_attributes(creature_params)
    render json: @creature
end
def destroy
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
    @creature.destroy(creature_params)
    render json: {
        msg: "peace"
    }
end
private 
def creature_paramsparams.require(:creature).permit(:name, :description)
end
    
end
