# Concept: Robot Framework Testing Service

## What is Robot Framework?

Robot Framework is an open-source test automation framework built on Python.
It uses a simple, tabular syntax that is readable even for non-technical users —
known as **Keyword-Driven Testing**.

```
*** Test Cases ***
My First Test
    Log    Hello Robot Framework!
```

No programming code required. Tests are written in plain language and consist of
**Keywords** — reusable action blocks.

---

## Why Robot Framework?

| Advantage             | Explanation                                                    |
|-----------------------|----------------------------------------------------------------|
| Readable syntax       | Tests read almost like prose                                   |
| Extensible            | Hundreds of libraries available (Selenium, Playwright, ...)    |
| API + UI + more       | One framework for all types of tests                           |
| Active community      | Well documented, many examples                                 |
| CI/CD-ready           | Integrates seamlessly with GitHub Actions, Jenkins, etc.       |

---

## Test targets

This repository uses **publicly available test services** that serve as realistic test environments:

### API Testing

**JSONPlaceholder** (`https://jsonplaceholder.typicode.com`)
- RESTful API service with a complete CRUD interface
- Supports GET, POST, PUT, PATCH, DELETE
- Resources: `/posts`, `/users`, `/comments`, `/todos`

**ReqRes** (`https://reqres.in`)
- REST API service with authentication and user management endpoints
- Login, token handling, registration, error handling, pagination

### UI / Browser Testing

**The Internet** (`https://the-internet.herokuapp.com`)
- Demo application covering common test automation scenarios
- Scenarios: login, forms, checkboxes, alerts, drag & drop, etc.

**SauceDemo** (`https://www.saucedemo.com`)
- Demo shop by Sauce Labs
- Scenarios: login, products, cart, checkout

---

## Test strategy

The service is structured in three test layers, each independently executable:

| Layer | Folder | Content |
|---|---|---|
| Basics | `tests/01_grundlagen/` | Robot Framework syntax, keywords, variables, control structures |
| API | `tests/02_api/` | HTTP methods, response validation, auth flows, status code assertions |
| UI / E2E | `tests/03_ui/` | Browser automation, form interaction, end-to-end scenarios |

**Keyword-Driven Testing** — all tests are abstracted through reusable keywords. Test logic and technical implementation are consistently separated:

- `tests/` — contains test cases only
- `resources/keywords/` — technical implementation of actions
- `resources/variables/` — configuration (URLs, browsers, timeouts)

This separation allows configuration and keywords to be modified or reused independently of the tests.

---

## Which Robot Framework Libraries do we use?

| Library                 | Version  | Purpose                               |
|-------------------------|----------|---------------------------------------|
| Python                  | 3.12     | Runtime environment                   |
| Node.js                 | 22 LTS   | Runtime environment (Playwright)      |
| robotframework          | 7.4.2    | Core framework                        |
| robotframework-requests | 0.9.7    | HTTP/API tests                        |
| robotframework-browser  | 19.13.0   | Browser automation (Playwright)       |
| robotframework-pabot    | 5.2.2   | Parallel test execution (optional)    |

