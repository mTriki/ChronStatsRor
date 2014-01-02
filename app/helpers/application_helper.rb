module ApplicationHelper
	# Retourner la liste des équipes
  	def teams
    	@teams = Team.all
  	end
end
