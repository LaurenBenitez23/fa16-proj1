class PokemonsController < ApplicationController
	def capture
		p = Pokemon.find(params[:id])
		p.update(trainer_id: current_trainer.id)
		p.save!
		redirect_to "/"
	end

	def damage
		p = Pokemon.find(params[:id])
		new_health = p.health - 10
		if new_health <= 0
			#destroy it
			p.destroy
		else
			#update health
			p.update(health: new_health)
		end
		p.save!
		redirect_to :controller => 'trainers', :action => 'show', :id => current_trainer.id
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		
		@pokemon = Pokemon.new(pokemon_params)

		@pokemon.update(health: 100)
		@pokemon.update(level: 1)
		
		@pokemon.update(trainer_id: current_trainer.id)
		if @pokemon.save
			redirect_to :controller => 'trainers', :action => 'show', :id => current_trainer.id
		else
			
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path
		end
		
	end

	private
	def pokemon_params
      	params.require(:pokemon).permit(:name)
   	end	
end