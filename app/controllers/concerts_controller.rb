class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all.order(:date)
	end

	def show
		@concert = Concert.find(params[:id])
	end

	def new
		@concert = Concert.new
	end

	def create
		@max_price = params[:concert][:price]
		@concerts = Concert.all.order(:price)
		
	end
	
end
