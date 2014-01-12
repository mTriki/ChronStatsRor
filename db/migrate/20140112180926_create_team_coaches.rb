class CreateTeamCoaches < ActiveRecord::Migration
	def self.up
    	execute <<-SQL
    		CREATE VIEW `team_coaches` AS select `teams`.`id` AS `team_id`,`teams`.`name` AS `team_name`,`participants`.`name` AS `name`,`participants`.`firstname` AS `firstname` from ((`participants` join `participant_teams` on(((`participants`.`id` = `participant_teams`.`participant_id`) and (`participants`.`type` = 'Coach')))) join `teams` on((`teams`.`id` = `participant_teams`.`team_id`)))
      SQL
  	end
  	def self.down
    	execute <<-SQL
      		DROP VIEW `team_coaches`
    	SQL
  	end
end


