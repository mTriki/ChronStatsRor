class CreateMatchTeams < ActiveRecord::Migration
	def self.up
    	execute <<-SQL
    		CREATE VIEW `match_teams` AS select `matches`.`date` AS `date`,`matches`.`homeScore` AS `homeScore`,`matches`.`awayScore` AS `awayScore`,`matches`.`championship_id` AS `championship_id`,`t1`.`name` AS `team1_name`,`t2`.`name` AS `team2_name` from ((`matches` join `teams` `t1` on((`t1`.`id` = `matches`.`team_id1_id`))) join `teams` `t2` on((`t2`.`id` = `matches`.`team_id2_id`)))
      	SQL
  	end
  	def self.down
    	execute <<-SQL
      		DROP VIEW `match_teams`
    	SQL
  	end
end
