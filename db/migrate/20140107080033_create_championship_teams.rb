class CreateChampionshipTeams < ActiveRecord::Migration
  def self.up
    execute <<-SQL
		CREATE  VIEW `championship_teams` AS select distinct `championships`.`name` AS `championship_name`,`teams`.`name` AS `team_name` from ((`matches` join `teams` on(((`teams`.`id` = `matches`.`team_id1_id`) or (`teams`.`id` = `matches`.`team_id2_id`)))) join `championships` on((`championships`.`id` = `matches`.`championship_id`)))
    SQL
  end
  def self.down
    execute <<-SQL
      DROP VIEW `championship_teams`
    SQL
  end
end
