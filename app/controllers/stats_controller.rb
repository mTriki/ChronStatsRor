class StatsController < ApplicationController
	layout "front_application"

	def show_home
	end

	def show_ranking
		@championship = Championship.find_by_name(params[:championship_name])
		@ranking = Ranking.all
  	end

	def show_played_matches
		@championship = Championship.find_by_name(params[:championship_name])
		@matches = Match.all
	end

	def show_future_matches
		@championship = Championship.find_by_name(params[:championship_name])
		@matches = Match.all
	end

	def show_team
		@championship = Championship.find_by_name(params[:championship_name])
		@team = Team.find_by_name(params[:championship_name])
	end
end
