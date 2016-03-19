class ItemsController < ApplicationController

	before_action :set_player, except: []
	before_action :set_item, only: [:show, :edit, :update, :destroy]

	layout 'modal'

	# GET /items
	# GET /items.json
	def index
		@items = Item.all
	end

	# GET /items/1
	# GET /items/1.json
	def show
	end

	# GET /items/new
	def new
		@modal_title = 'Add Item'
		@item = Item.new player: @player
	end

	# GET /items/1/edit
	def edit
	end

	# POST /items
	# POST /items.json
	def create
		@item = Item.new(item_params)

		respond_to do |format|
			if @item.save
				format.html { redirect_to [@player, {anchor: 'items'}], notice: 'Item was successfully created.' }
				format.json { render :show, status: :created, location: @item }
			else
				format.html { render :new }
				format.json { render json: @item.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /items/1
	# PATCH/PUT /items/1.json
	def update
		respond_to do |format|
			if @item.update(item_params)
				format.html { redirect_to [@player, {anchor: 'items'}], notice: 'Item was successfully updated.' }
				format.json { render :show, status: :ok, location: @item }
			else
				format.html { render :edit }
				format.json { render json: @item.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /items/1
	# DELETE /items/1.json
	def destroy
		@item.destroy
		respond_to do |format|
			format.html { redirect_to [@player, {anchor: 'items'}], notice: 'Item was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private

	def set_player
		@player = Player.find(params[:player_id])
	end

	def set_item
		@item = Item.find(params[:id])
	end

	def item_params
		params.require(:item).permit(:player_id, :quantity, :name, :notes)
	end
end
