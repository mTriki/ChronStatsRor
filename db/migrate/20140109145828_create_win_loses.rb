class CreateWinLoses < ActiveRecord::Migration
  def self.up
    execute <<-SQL
    	CREATE VIEW `win_lose` AS select `matches`.`championship_id` AS `championship_id`,`matches`.`id` AS `match_id`,`winner`.`id` AS `winner_id`,(case (`matches`.`homeScore` >= `matches`.`awayScore`) when 1 then `matches`.`homeScore` when 0 then `matches`.`awayScore` end) AS `winner_score`,`looser`.`id` AS `looser_id`,(case (`matches`.`homeScore` < `matches`.`awayScore`) when 1 then `matches`.`homeScore` when 0 then `matches`.`awayScore` end) AS `looser_score`,(`matches`.`homeScore` = `matches`.`awayScore`) AS `is_equal` from ((`matches` join `teams` `winner` on((((`matches`.`team_id1_id` = `winner`.`id`) and ((`matches`.`homeScore` > `matches`.`awayScore`) or ((`matches`.`homeScore` = `matches`.`awayScore`) and (`winner`.`id` > `matches`.`team_id2_id`)))) or ((`matches`.`team_id2_id` = `winner`.`id`) and (`matches`.`awayScore` > `matches`.`homeScore`))))) join `teams` `looser` on((((`matches`.`team_id1_id` = `looser`.`id`) and (`matches`.`homeScore` < `matches`.`awayScore`)) or ((`matches`.`team_id2_id` = `looser`.`id`) and ((`matches`.`awayScore` < `matches`.`homeScore`) or ((`matches`.`homeScore` = `matches`.`awayScore`) and (`winner`.`id` > `matches`.`team_id2_id`)))))))
    SQL
  end
  def self.down
    execute <<-SQL
      DROP VIEW `WinLose`
    SQL
  end
end