# Backlog

Dieser Backlog beschreibt alle geplanten Aufgaben des Projekts, geordnet nach Priorität und Sprint.

---

## Status-Legende

| Symbol | Bedeutung         |
|--------|-------------------|
| ✅     | Fertig             |
| 🔄     | In Bearbeitung     |
| 📋     | Geplant            |
| ⏸️     | Blockiert / Warten |

---

## Sprint 1 — Foundation

| #  | Aufgabe                                           | Branch                            | Status |
|----|---------------------------------------------------|-----------------------------------|--------|
| 1  | `.gitignore`, `requirements.txt`                  | `chore/project-foundation`        | ✅     |
| 2  | `README.md` (DE + EN)                             | `docs/initial-documentation`      | ✅     |
| 3  | Konzept, Architektur, Erste Schritte (DE + EN)    | `docs/initial-documentation`      | ✅     |
| 4  | Branch-Strategie, Backlog, Index                  | `docs/initial-documentation`      | ✅     |
| 5  | Branch-Schutz auf GitHub konfigurieren            | — (GitHub Settings)               | 📋     |

---

## Sprint 2 — Grundlagen Tests

| #  | Aufgabe                                                | Branch                          | Status |
|----|--------------------------------------------------------|---------------------------------|--------|
| 6  | `tests/01_grundlagen/hello_robot.robot`                | `feature/grundlagen-tests`      | ✅     |

---

## Sprint 3 — API Tests

| #  | Aufgabe                                                | Branch                          | Status |
|----|--------------------------------------------------------|---------------------------------|--------|
| 7  | `resources/variables/api_variables.yaml`               | `feature/api-tests`             | ✅     |
| 8  | `resources/keywords/api_keywords.resource`             | `feature/api-tests`             | ✅     |
| 9  | `tests/02_api/jsonplaceholder_get.robot`               | `feature/api-tests`             | ✅     |
| 10 | `tests/02_api/jsonplaceholder_post.robot`              | `feature/api-tests`             | ✅     |
| 11 | `tests/02_api/reqres_auth.robot`                       | `feature/api-tests`             | ✅     |

---

## Sprint 4 — UI Tests (Playwright)

| #  | Aufgabe                                                | Branch                          | Status |
|----|--------------------------------------------------------|---------------------------------|--------|
| 12 | `resources/variables/ui_variables.yaml`                | `feature/ui-tests`              | ✅     |
| 13 | `resources/keywords/ui_keywords.resource`              | `feature/ui-tests`              | ✅     |
| 14 | `tests/03_ui/the_internet_login.robot`                 | `feature/ui-tests`              | ✅     |
| 15 | `tests/03_ui/the_internet_forms.robot`                 | `feature/ui-tests`              | ✅     |
| 16 | `tests/03_ui/saucedemo_shopping.robot`                 | `feature/ui-tests`              | ✅     |

---

## Sprint 5 — CI/CD Pipeline

| #  | Aufgabe                                                | Branch                          | Status |
|----|--------------------------------------------------------|---------------------------------|--------|
| 17 | `.github/workflows/robot-tests.yml`                    | `ci/github-actions-pipeline`    | ✅     |
| 18 | Branch-Schutz: CI muss grün sein vor Merge             | — (GitHub Settings)             | 📋     |

---

## Sprint 6 — Submodule Integration

> **Zeitpunkt:** Nach erfolgreichem Merge von Sprint 2 (erste Tests grün auf `main`)  
> **Hauptrepo:** `aitimatic-GmbH/test-automation-forge`  
> **Submodule-Pfad:** `services/robotframework-testing`

| #  | Aufgabe                                                                    | Branch                            | Status |
|----|----------------------------------------------------------------------------|-----------------------------------|--------|
| 19 | Submodule-Kompatibilität sicherstellen (Pfade, Konfiguration prüfen)       | `chore/submodule-compatibility`   | 📋     |
| 20 | Submodule in `test-automation-forge` einbinden                             | — (im Hauptrepo)                  | 📋     |
| 21 | CI/CD im Hauptrepo: Submodule-Tests triggern                               | `ci/submodule-trigger` (Hauptrepo)| 📋     |
| 22 | Dokumentation: Submodule-Einbindung (DE + EN)                              | `docs/submodule-integration`      | 📋     |
| 23 | `README.md` um Submodule-Nutzung erweitern (DE + EN)                       | `docs/submodule-integration`      | 📋     |

---

## Backlog (Offen)

| #  | Aufgabe                                                | Branch                          | Status |
|----|--------------------------------------------------------|---------------------------------|--------|
| 24 | Englische Branch-Strategie Doku                        | `docs/branch-strategy-en`       | 📋     |
| 25 | Parallele Tests mit pabot demonstrieren                | `feature/pabot-parallel`        | 📋     |
| 26 | Data-Driven Tests (FOR-Schleifen, CSV)                 | `feature/data-driven`           | 📋     |

---

Dieser Backlog wird laufend aktualisiert.
Neue Aufgaben werden hier eingetragen, bevor ein Branch erstellt wird.
