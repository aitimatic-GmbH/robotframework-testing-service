# Robot Framework Testing Service

[![CI Pipeline](https://github.com/aitimatic-GmbH/robotframework-testing-service/actions/workflows/robot-tests.yml/badge.svg)](https://github.com/aitimatic-GmbH/robotframework-testing-service/actions/workflows/robot-tests.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

> **Deutsch** | [English below](#english)

---

## Deutsch

Test-Automatisierungs-Service auf Basis von [Robot Framework](https://robotframework.org/) — Teil des [aitimatic Test Automation Service Katalogs](https://github.com/aitimatic-GmbH/test-automation-forge).

Der Service implementiert vollständige API- und Browser-Testsuiten nach produktionsreifen Standards: Keyword-Driven Testing, konfigurationsgesteuerte Ausführung und CI/CD-Integration. Einsetzbar als eigenständige Lösung oder als Git-Submodule in übergeordnete Repositories.

## Kernfunktionen

- **Konfigurationsgesteuert** — URLs, Browser und Timeouts werden ausschließlich über YAML-Variablendateien gesteuert, ohne Eingriffe in den Test-Code
- **Modular** — Keywords und Variablen sind von den Tests getrennt und vollständig wiederverwendbar
- **CI/CD-integriert** — GitHub Actions Pipeline mit separaten Jobs, HTML-Reports und XML-Output als Workflow-Artefakte

## Abgedeckte Testszenarien

| Kategorie  | Szenarien |
|------------|-----------|
| REST API   | CRUD-Operationen (GET, POST, PUT, PATCH, DELETE), Response-Validierung, Query-Parameter |
| Auth-Flows | Login, Token-Handling, Fehlerfälle, Registrierung, Pagination |
| Browser    | Login-Formulare, Checkboxen, Dropdowns, JavaScript-Alerts |
| E2E        | Login → Produktauswahl → Warenkorb → Checkout |

## Schnellstart

**Voraussetzungen:** Python 3.12, Node.js 22 LTS

1. Repository klonen:
   ```bash
   git clone https://github.com/aitimatic-GmbH/robotframework-testing-service.git
   cd robotframework-testing-service
   ```

2. Virtuelle Umgebung und Abhängigkeiten:
   ```bash
   python -m venv .venv && source .venv/bin/activate
   pip install -r requirements.txt
   ```

3. Playwright-Browser initialisieren:
   ```bash
   rfbrowser init
   ```

4. Tests ausführen:
   ```bash
   robot tests/01_grundlagen/
   robot tests/02_api/
   robot --variable HEADLESS:true tests/03_ui/
   ```

## Dokumentation

- [Konzept](docs/de/konzept.md) — Framework-Übersicht, eingesetzte Libraries, Testszenarien
- [Architektur](docs/de/architektur.md) — Repo-Struktur, Keywords, Variables, Reports
- [Inbetriebnahme](docs/de/erste-schritte.md) — Lokales Setup und Ausführung

## Tech-Stack

| Komponente | Version |
|---|---|
| Python | 3.12 |
| Node.js | 22 LTS |
| Robot Framework | 7.4.2 |
| robotframework-requests | 0.9.7 |
| robotframework-browser (Playwright) | 19.13.0 |
| robotframework-pabot | 5.2.2 |

---

## Lizenz

MIT License — siehe [LICENSE](LICENSE)  
Copyright (c) 2026 aitimatic GmbH

**Haftungsausschluss:** Bereitstellung „as-is" ohne Gewährleistung. Autoren und Inhaber haften nicht für Schäden oder Ansprüche.

Dieses Repository akzeptiert keine externen Beiträge. Siehe [CONTRIBUTING.md](CONTRIBUTING.md) und [SECURITY.md](SECURITY.md).

---

## English

Test automation service based on [Robot Framework](https://robotframework.org/) — part of the [aitimatic Test Automation Service Catalog](https://github.com/aitimatic-GmbH/test-automation-forge).

The service implements complete API and browser test suites following production-grade standards: keyword-driven testing, configuration-driven execution and CI/CD integration. Usable as a standalone solution or as a Git submodule in parent repositories.

## Core features

- **Configuration-driven** — URLs, browsers and timeouts are controlled exclusively via YAML variable files, without modifying test code
- **Modular** — Keywords and variables are separated from tests and fully reusable
- **CI/CD-integrated** — GitHub Actions pipeline with separate jobs, HTML reports and XML output as workflow artifacts

## Test scenarios covered

| Category   | Scenarios |
|------------|-----------|
| REST API   | CRUD operations (GET, POST, PUT, PATCH, DELETE), response validation, query parameters |
| Auth flows | Login, token handling, error cases, registration, pagination |
| Browser    | Login forms, checkboxes, dropdowns, JavaScript alerts |
| E2E        | Login → product selection → cart → checkout |

## Quick start

**Prerequisites:** Python 3.12, Node.js 22 LTS

1. Clone the repository:
   ```bash
   git clone https://github.com/aitimatic-GmbH/robotframework-testing-service.git
   cd robotframework-testing-service
   ```

2. Virtual environment and dependencies:
   ```bash
   python -m venv .venv && source .venv/bin/activate
   pip install -r requirements.txt
   ```

3. Initialize Playwright browsers:
   ```bash
   rfbrowser init
   ```

4. Run tests:
   ```bash
   robot tests/01_grundlagen/
   robot tests/02_api/
   robot --variable HEADLESS:true tests/03_ui/
   ```

## Documentation

- [Concept](docs/en/concept.md) — Framework overview, libraries used, test scenarios
- [Architecture](docs/en/architecture.md) — Repo structure, keywords, variables, reports
- [Setup](docs/en/getting-started.md) — Local setup and execution

## Tech stack

| Component | Version |
|---|---|
| Python | 3.12 |
| Node.js | 22 LTS |
| Robot Framework | 7.4.2 |
| robotframework-requests | 0.9.7 |
| robotframework-browser (Playwright) | 19.13.0 |
| robotframework-pabot | 5.2.2 |

---

## License

MIT License — see [LICENSE](LICENSE)  
Copyright (c) 2026 aitimatic GmbH

**Disclaimer:** Provided "as-is" without warranty. Authors and rights holders are not liable for damages or claims.

This repository does not accept external contributions. See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md).
