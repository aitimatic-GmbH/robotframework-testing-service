# Konzept: Robot Framework Testing Service

## Was ist Robot Framework?

Robot Framework ist ein Open-Source-Testautomatisierungs-Framework, das auf Python basiert.
Es verwendet eine einfache, tabellarische Syntax, die auch für technisch weniger versierte
Personen lesbar ist — das sogenannte **Keyword-Driven Testing**.

```
*** Test Cases ***
Mein erster Test
    Log    Hallo Robot Framework!
```

Kein Programmiercode nötig. Tests werden auf Englisch (oder Deutsch) geschrieben und
bestehen aus **Keywords** — wiederverwendbaren Aktionsblöcken.

---

## Warum Robot Framework?

| Vorteil                  | Erklärung                                                      |
|--------------------------|----------------------------------------------------------------|
| Lesbare Syntax           | Tests lesen sich fast wie Prosa                                |
| Erweiterbar              | Hunderte von Bibliotheken verfügbar (Selenium, Playwright ...) |
| API + UI + mehr          | Ein Framework für alle Test-Arten                              |
| Aktive Community         | Gut dokumentiert, viele Beispiele                              |
| CI/CD-ready              | Integriert sich nahtlos in GitHub Actions, Jenkins etc.        |

---

## Test-Ziele

Dieses Repository nutzt **öffentlich verfügbare Test-Services**, die als realistische Testumgebungen dienen:

### API Testing

**JSONPlaceholder** (`https://jsonplaceholder.typicode.com`)
- RESTful API-Service mit vollständigem CRUD-Interface
- Unterstützt GET, POST, PUT, PATCH, DELETE
- Ressourcen: `/posts`, `/users`, `/comments`, `/todos`

**ReqRes** (`https://reqres.in`)
- REST API-Service mit Authentifizierungs- und Benutzerverwaltungs-Endpunkten
- Login, Token-Handling, Registrierung, Fehlerbehandlung, Pagination

### UI / Browser Testing

**The Internet** (`https://the-internet.herokuapp.com`)
- Demo-Applikation für Testautomatisierungs-Szenarien
- Szenarien: Login, Formulare, Checkboxen, Alerts, Drag & Drop, etc.

**SauceDemo** (`https://www.saucedemo.com`)
- Demo-Shop von Sauce Labs
- Szenarien: Login, Produkte, Warenkorb, Checkout

---

## Teststrategie

Der Service ist in drei Testebenen gegliedert, die unabhängig voneinander ausführbar sind:

| Ebene | Ordner | Inhalt |
|---|---|---|
| Grundlagen | `tests/01_grundlagen/` | Robot Framework Syntax, Keywords, Variables, Kontrollstrukturen |
| API | `tests/02_api/` | HTTP-Methoden, Response-Validierung, Auth-Flows, Statuscode-Prüfungen |
| UI / E2E | `tests/03_ui/` | Browser-Automatisierung, Formular-Interaktion, End-to-End-Szenarien |

**Keyword-Driven Testing** — alle Tests sind über wiederverwendbare Keywords abstrahiert. Testlogik und technische Implementierung sind konsequent getrennt:

- `tests/` — enthält ausschließlich Testfälle
- `resources/keywords/` — technische Implementierung der Aktionen
- `resources/variables/` — Konfiguration (URLs, Browser, Timeouts)

Diese Trennung erlaubt es, Konfiguration und Keywords unabhängig von den Tests zu ändern oder wiederzuverwenden.

---

## Welche Robot Framework Libraries nutzen wir?

| Library              | Version  | Zweck                                     |
|----------------------|----------|-------------------------------------------|
| Python               | 3.12     | Laufzeitumgebung                          |
| Node.js              | 22 LTS   | Laufzeitumgebung (Playwright)             |
| robotframework       | 7.4.2    | Kern-Framework                            |
| robotframework-requests | 0.9.7 | HTTP/API Tests                            |
| robotframework-browser  | 19.13.0 | Browser-Automatisierung (Playwright)      |
| robotframework-pabot    | 5.2.2 | Parallele Testausführung (optional)       |

