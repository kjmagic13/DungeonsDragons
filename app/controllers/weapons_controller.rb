class WeaponsController < ApplicationController

	before_action :set_player, except: []
	before_action :set_weapon, only: [:show, :edit, :update, :destroy]

	layout 'modal'

	# GET /weapons
	# GET /weapons.json
	def index
		@weapons = Weapon.all
	end

	# GET /weapons/1
	# GET /weapons/1.json
	def show
	end

	# GET /weapons/new
	def new
		@modal_title = 'Add Weapon'
		@weapon = Weapon.new player: @player
	end

	# GET /weapons/1/edit
	def edit
	end

	# POST /weapons
	# POST /weapons.json
	def create
		@weapon = Weapon.new(weapon_params)

		respond_to do |format|
			if @weapon.save
				format.html { redirect_to [@player, {anchor: 'weapons'}], notice: 'Weapon was successfully created.' }
				format.json { render :show, status: :created, location: @weapon }
			else
				format.html { render :new }
				format.json { render json: @weapon.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /weapons/1
	# PATCH/PUT /weapons/1.json
	def update
		respond_to do |format|
			if @weapon.update(weapon_params)
				format.html { redirect_to [@player, {anchor: 'weapons'}], notice: 'Weapon was successfully updated.' }
				format.json { render :show, status: :ok, location: @weapon }
			else
				format.html { render :edit }
				format.json { render json: @weapon.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /weapons/1
	# DELETE /weapons/1.json
	def destroy
		@weapon.destroy
		respond_to do |format|
			format.html { redirect_to [@player, {anchor: 'weapons'}], notice: 'Weapon was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private

	def set_player
		@player = Player.find(params[:player_id])
	end

	def set_weapon
		@weapon = Weapon.find(params[:id])
	end

	def weapon_params
		params.require(:weapon).permit(:name, :attack, :damage, :notes, :player_id)
	end
end
