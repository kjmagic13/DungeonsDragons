class PlayersController < ApplicationController

	before_action :set_player, except: [:index, :new, :create]

	# GET /players
	# GET /players.json
	def index
		@players = Player.all
	end

	# GET /players/1
	# GET /players/1.json
	def show
	end

	def rest
		@player.rest
		redirect_to @player
	end

	def get_modifiers
		render template: 'players/modifiers/index', layout: false
	end

	def get_skills
		render template: 'players/skills/index', layout: false
	end

	# GET /players/new
	def new
		@player = Player.new
	end

	# GET /players/1/edit
	def edit
		@player.player_spells.build
	end

	# POST /players
	# POST /players.json
	def create
		@player = Player.new(player_params)

		respond_to do |format|
			if @player.save
				format.html { redirect_to @player, notice: 'Player was successfully created.' }
				format.json { render :show, status: :created, location: @player }
			else
				format.html { render :new }
				format.json { render json: @player.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /players/1
	# PATCH/PUT /players/1.json
	def update
		respond_to do |format|
			if @player.update(player_params)
				format.html { redirect_to @player, notice: 'Player was successfully updated.' }
				format.json { render :show, status: :ok, location: @player }
			else
				format.html { render :edit }
				format.json { render json: @player.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /players/1
	# DELETE /players/1.json
	def destroy
		@player.destroy
		respond_to do |format|
			format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_player
		@player = Player.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def player_params
		# params.require(:player).permit(:name, :rank, :class_name, :race, :alignment, :xp, player_spells_attributes: [:id, :level, :spell_id, :_destroy])
		params.require(:player).permit!.except(:id, :created_at, :updated_at)
	end
end
