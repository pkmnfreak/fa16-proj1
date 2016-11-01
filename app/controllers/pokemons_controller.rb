class PokemonsController < ApplicationController

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(trainer_id: current_trainer.id)
    redirect_to '/'
  end

  def damage
    @pokemon = Pokemon.find_by trainer_id: params[:trainer_id], id: params[:id]
    if @pokemon.health - 10 <= 0
      @pokemon.destroy
      redirect_to '/trainers/' + params[:trainer_id].to_s
    else
      @pokemon.update(health: (@pokemon.health-10))
      redirect_to '/trainers/' + params[:trainer_id].to_s
    end
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(name: params["pokemon"]["name"])
    if @pokemon.valid?
      Pokemon.create(name: params["pokemon"]["name"], trainer_id: current_trainer.id, health: 100, level: 1)
      redirect_to '/trainers/' + current_trainer.id.to_s
    else
      redirect_to '/pokemon/new'
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end
end
