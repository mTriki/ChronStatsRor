module StatsHelper
	def championships
		@championships = Championship.all
	end

	def chTeams
		@chTeams = ChampionshipTeam.all
	end
end
