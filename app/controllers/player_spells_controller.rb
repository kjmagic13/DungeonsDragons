class PlayerSpellsController < ApplicationController

	before_action :set_player_spell, only: [:show, :edit, :update, :destroy, :use]

	# layout 'modal', only: [:show]
	layout 'modal'

	# GET /player_spells
	# GET /player_spells.json
	def index
		@player_spells = PlayerSpell.all
	end

	# GET /player_spells/1
	# GET /player_spells/1.json
	def show
		@modal_title = @player_spell.spell.name
		@attrib_keys = ["desc", "higher_level", "range", "components", "material", "ritual", "duration", "concentration", "casting_time", "level", "school", "class_names", "archetype", "domains", "oaths", "circles", "patrons"]
	end

	def use
		@player_spell.use
		redirect_to [@player_spell.player, {anchor: 'spells'}]
	end

	# GET /player_spells/new
	def new
		@player_spell = PlayerSpell.new(player_id: params[:player_id])
		@modal_title = 'Add Spell'
	end

	# GET /player_spells/1/edit
	def edit
	end

	# POST /player_spells
	# POST /player_spells.json
	def create
		@player_spell = PlayerSpell.new(player_spell_params)

		respond_to do |format|
			if @player_spell.save
				format.html { redirect_to [@player_spell.player, {anchor: 'spells'}], notice: 'Player spell was successfully created.' }
				format.json { render :show, status: :created, location: @player_spell }
			else
				format.html { render :new }
				format.json { render json: @player_spell.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /player_spells/1
	# PATCH/PUT /player_spells/1.json
	def update
		respond_to do |format|
			if @player_spell.update(player_spell_params)
				format.html { redirect_to [@player_spell.player, {anchor: 'spells'}], notice: 'Player spell was successfully updated.' }
				format.json { render :show, status: :ok, location: @player_spell }
			else
				format.html { render :edit }
				format.json { render json: @player_spell.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /player_spells/1
	# DELETE /player_spells/1.json
	def destroy
		@player = @player_spell.player
		@player_spell.destroy
		respond_to do |format|
			format.html { redirect_to [@player, {anchor: 'spells'}], notice: 'Player spell was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_player_spell
		@player_spell = PlayerSpell.find_by(player_id: params[:player_id], spell_id: params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def player_spell_params
		params.require(:player_spell).permit!
	end
end
