-- Tijd v2: projecten-tabel (additief — raakt bestaande tabellen niet)
-- Eenmalig uitvoeren in Supabase SQL Editor van project "Tijdsregister"

create table if not exists projects (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users not null,
  name text not null,
  color text,
  archived boolean default false not null,
  created_at timestamptz default now() not null,
  unique (user_id, name)
);

alter table projects enable row level security;

create policy "users manage own projects" on projects
  for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

alter publication supabase_realtime add table projects;
