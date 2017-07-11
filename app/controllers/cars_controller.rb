class CarsController < ApplicationController
	before_action :set_car_id, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_owner!, except: :index
	def index
		@cars = Car.all
	end

	def new
		@car = current_owner.cars.build
	end

	def create
		@car = current_owner.cars.build(car_params)

		if @car.save
			redirect_to cars_url
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		if current_owner.cars.update_attributes(car_params)
			redirect_to car_url(@car)
		else
			render :edit
		end
	end

	def destroy
		current_owner.cars.destroy
		redirect_to cars_url
	end

	private

	def set_car_id
		@car = current_owner.cars.find_by(id: params[:id])
	end

	def car_params
		params.require(:car).permit(:car_type, :car_name, :car_years, :car_price)
	end
end
