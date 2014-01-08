class StatsController < ApplicationController
	layout "front_application"

	def show_home
	end

	def show_ranking
  		@championship = params[:championship_name]
  		@matches = Match.all
  	end

	def show_matches
		@championship = params[:championship_name]
		@matches = Match.all
	end

	def show_team
		@championship = params[:championship_name]
		@team = params[:team_name]
	end
end
