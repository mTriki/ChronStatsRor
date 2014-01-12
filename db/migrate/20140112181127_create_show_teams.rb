class CreateShowTeams < ActiveRecord::Migration
	def self.up
    	execute <<-SQL
        CREATE VIEW `show_teams` AS select distinct `championships`.`id` AS `championship_id`,`team_participants`.`team_id` AS `team_id`,`team_participants`.`participant_id` AS `participant_id`,`team_participants`.`participant_name` AS `participant_name`,`team_participants`.`participant_firstname` AS `participant_firstname`,(select count(0) from `team_facts` where ((`team_participants`.`participant_id` = `team_facts`.`participant_id`) and (`team_facts`.`fact_type` = 'Goal') and (`team_facts`.`team_id` = `team_participants`.`team_id`) and (`team_facts`.`championship_id` = `championships`.`id`))) AS `goal`,(select count(0) from `team_facts` where ((`team_participants`.`participant_id` = `team_facts`.`participant_id`) and (`team_facts`.`fact_type` = 'Foul') and (`team_facts`.`team_id` = `team_participants`.`team_id`) and (`team_facts`.`championship_id` = `championships`.`id`))) AS `foul`,(select count(0) from `team_facts` where ((`team_participants`.`participant_id` = `team_facts`.`participant_id`) and (`team_facts`.`fact_type` = 'Penalty') and (`team_facts`.`team_id` = `team_participants`.`team_id`) and (`team_facts`.`championship_id` = `championships`.`id`))) AS `penalty` from ((`team_participants` join `championship_teams`) join `championships` on((`championships`.`id` = `championship_teams`.`championship_id`))) where (`team_participants`.`type` = 'Player')
     	SQL
  	end
  	def self.down
    	execute <<-SQL
      		DROP VIEW `show_teams`
    	SQL
  	end
end
