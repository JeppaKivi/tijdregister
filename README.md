# Tijd

Persoonlijke tijdregistratie in 15-minuten blokken, 24 uur per dag, georganiseerd per project.

## Features
- Dag / week / maand grid (00:00–23:45, 96 blokken per dag)
- Projecten: zelf aan te maken, hernoemen en archiveren
- Vrij kopiëren en plakken van tijdblokken
- Analyse-tab: filters, grafieken (verdeling per project, tijd per dag/week) en tabellen
- Excel-export: time-grid template met dynamische formules (handmatige aanpassingen tellen mee)
- Realtime sync tussen apparaten, werkt als PWA op iPhone

## Stack
- Vanilla HTML/CSS/JS (single-file)
- Supabase (database + auth + realtime)
- Chart.js (grafieken, lazy loaded)
- xlsx-js-style (Excel-export, lazy loaded)
- GitHub Pages (hosting)

## Live
https://jeppakivi.github.io/tijdregister/

## Database
Eenmalige migratie voor de projecten-tabel: zie `migrations/001_projects.sql` (uitvoeren in de Supabase SQL Editor). De app werkt ook zonder deze tabel (projecten draaien dan lokaal per sessie), maar voor cross-device projectbeheer is de tabel nodig.
