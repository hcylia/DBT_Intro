CREATE TABLE IF NOT EXISTS public.dbt_audits(
    id SERIAL PRIMARY KEY,
    audit_type VARCHAR(50),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO public.dbt_audit (audit_type) VALUES ('run_start'); commit;