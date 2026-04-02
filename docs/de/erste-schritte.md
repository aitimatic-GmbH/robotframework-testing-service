# Erste Schritte: Lokales Setup

## Voraussetzungen

| Tool       | Version   | Prüfen mit          |
|------------|-----------|---------------------|
| Python     | 3.12.x    | `python --version`  |
| pip        | 24.x      | `pip --version`     |
| Node.js    | 22 LTS    | `node --version`    |
| Git        | 2.x       | `git --version`     |

---

## Schritt 1: Repository klonen

```bash
git clone https://github.com/aitimatic-GmbH/robotframework-testing-service.git
cd robotframework-testing-service
```

---

## Schritt 2: Abhängigkeiten installieren

```bash
pip install -r requirements.txt
```

Installiert:
- Robot Framework 7.4.2
- robotframework-requests 0.9.7
- robotframework-browser 19.13.0
- robotframework-pabot 5.2.2

---

## Schritt 3: Playwright-Browser initialisieren

Browser Library nutzt Playwright im Hintergrund. Die Browser werden einmalig heruntergeladen:

```bash
rfbrowser init
```

Download: Chromium, Firefox und WebKit (~500 MB).

---

## Schritt 4: Grundlagen-Tests ausführen

```bash
robot tests/01_grundlagen/
```

Erwartete Ausgabe:
```
==============================================================================
Hello Robot
==============================================================================
Mein erster Test                                                      | PASS |
Mit Zahlen arbeiten                                                   | PASS |
Mit Listen arbeiten                                                   | PASS |
Mit Dictionaries arbeiten                                             | PASS |
Eigene Keywords verwenden                                             | PASS |
Bedingungen und Schleifen                                             | PASS |
==============================================================================
Hello Robot                                                           | PASS |
6 tests, 6 passed, 0 failed
```

---

## Schritt 5: Reports öffnen

```bash
# Linux/Mac
open report.html
```

---

## Schritt 6: API-Tests ausführen

```bash
robot tests/02_api/
```

Erfordert Internetverbindung (JSONPlaceholder, ReqRes).

---

## Schritt 7: UI-Tests ausführen

```bash
# Headless — ohne sichtbares Browserfenster (Standard für CI)
robot --variable HEADLESS:true tests/03_ui/

# Mit sichtbarem Browser
robot --variable HEADLESS:false tests/03_ui/
```

---

## Häufige Probleme

### `rfbrowser init` schlägt fehl
```bash
node --version
# Falls Node.js fehlt (Ubuntu/Debian):
sudo apt-get install -y nodejs npm
```

### `No module named 'robot'`
```bash
python -m robot --version
# Falls fehlend:
python -m pip install -r requirements.txt
```

### Tests schlagen fehl wegen Netzwerk
- JSONPlaceholder und ReqRes sind öffentliche Services und können selten nicht erreichbar sein.
