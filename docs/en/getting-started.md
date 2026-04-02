# Getting Started: Local Setup

## Prerequisites

| Tool       | Version   | Check with          |
|------------|-----------|---------------------|
| Python     | 3.12.x    | `python --version`  |
| pip        | 24.x      | `pip --version`     |
| Node.js    | 22 LTS    | `node --version`    |
| Git        | 2.x       | `git --version`     |

---

## Step 1: Clone the repository

```bash
git clone https://github.com/aitimatic-GmbH/robotframework-testing-service.git
cd robotframework-testing-service
```

---

## Step 2: Install dependencies

```bash
pip install -r requirements.txt
```

Installs:
- Robot Framework 7.4.2
- robotframework-requests 0.9.7
- robotframework-browser 19.13.0
- robotframework-pabot 5.2.2

---

## Step 3: Initialize Playwright browsers

Browser Library uses Playwright under the hood. The browsers are downloaded once:

```bash
rfbrowser init
```

Downloads Chromium, Firefox and WebKit (~500 MB).

---

## Step 4: Run basics tests

```bash
robot tests/01_grundlagen/
```

Expected output:
```
==============================================================================
Hello Robot
==============================================================================
My first test                                                         | PASS |
Working with numbers                                                  | PASS |
Working with lists                                                    | PASS |
Working with dictionaries                                             | PASS |
Using custom keywords                                                 | PASS |
Conditions and loops                                                  | PASS |
==============================================================================
Hello Robot                                                           | PASS |
6 tests, 6 passed, 0 failed
```

---

## Step 5: Open reports

```bash
# Linux/Mac
open report.html
```

---

## Step 6: Run API tests

```bash
robot tests/02_api/
```

Requires internet connection (JSONPlaceholder, ReqRes).

---

## Step 7: Run UI tests

```bash
# Headless — no visible browser window (default for CI)
robot --variable HEADLESS:true tests/03_ui/

# With visible browser
robot --variable HEADLESS:false tests/03_ui/
```

---

## Common issues

### `rfbrowser init` fails
```bash
node --version
# If Node.js is missing (Ubuntu/Debian):
sudo apt-get install -y nodejs npm
```

### `No module named 'robot'`
```bash
python -m robot --version
# If missing:
python -m pip install -r requirements.txt
```

### Tests fail due to network
- JSONPlaceholder and ReqRes are public services and may occasionally be unreachable.
