class StatsController < ApplicationController
	layout "front_application", only: [:show_stats]

  	def show_stats
  		@championships = Championship.all
    	@chTeamps = ChampionshipTeam.all
  	end
end
