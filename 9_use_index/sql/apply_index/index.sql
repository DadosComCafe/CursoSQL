\c mcdonalds_health_db;
-- aplicando o índice
CREATE INDEX idx_company ON public.company (name);

--aplicando multiplos índice ao insert
CREATE INDEX idx_snack ON public.snack (name);
CREATE INDEX idx_summary_snack ON public.snack (summary);
CREATE INDEX idx_createdat_snack ON public.snack ("createdAt");
