DELETE FROM tenant WHERE id > 100;
DELETE FROM visit_history WHERE created_at >= '1654041600';
UPDATE id_generator SET id=2678400000 WHERE stub='a';
ALTER TABLE id_generator AUTO_INCREMENT=2678400000;

-- CREATE INDEX visit_history_id_idx ON visit_history ( `competition_id` , `created_at` , `tenant_id` )
ALTER TABLE visit_history DROP INDEX visit_history_id_idx;
ALTER TABLE visit_history ADD INDEX visit_history_id_idx ( `player_id` , `competition_id` , `created_at` , `tenant_id` , `updated_at` );