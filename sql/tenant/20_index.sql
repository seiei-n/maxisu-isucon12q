CREATE INDEX idx_competition_tenant_id ON competition (tenant_id, id);
CREATE INDEX idx_player ON player (tenant_id, id, display_name, is_disqualified);
CREATE INDEX idx_player_score ON player_score (tenant_id, player_id, competition_id, score, row_num);