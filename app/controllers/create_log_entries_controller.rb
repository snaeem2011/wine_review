class CreateLogEntriesController < ApplicationController
	before_action :set_wine

	def index
		@create_log_entries = @wines.create_log_entries.order('created_at desc')
	end

	def new
		@create_log_entries = @wines.create_log_entries.new
	end

	def create
		@create_log_entries = @wines.create_log_entries.new(create_log_entries_params)
		if @create_log_entries.save
			redirect_to wine_create_log_entries_path(@Wines, Notice: 'Review saved!')
		else
			render :new
		end
	end
end	

private

def set_wine
	@Wines = Wine.find(params[:id])
end

def create_log_entries_params
	params.require(:create_log_entries).permit(:ratings, :name, :comments)
end