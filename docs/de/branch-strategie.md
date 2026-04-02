# Branch-Strategie

## Grundregel

> **Niemals direkt in `main` committen oder pushen.**

`main` ist der geschützte Hauptbranch. Er repräsentiert immer den stabilen,
getesteten Stand des Repos. Änderungen gelangen nur über einen **Pull Request** in `main`.

---

## Branch-Typen und Namenskonvention

| Präfix      | Wann verwenden                                     | Beispiel                          |
|-------------|-----------------------------------------------------|-----------------------------------|
| `feature/`  | Neue Funktionalität oder neuer Test                 | `feature/api-jsonplaceholder-get` |
| `fix/`      | Fehlerbehebung in einem bestehenden Test            | `fix/saucedemo-login-locator`     |
| `docs/`     | Dokumentation hinzufügen oder ändern                | `docs/erste-schritte-erweitern`   |
| `chore/`    | Konfiguration, Dependencies, CI/CD                  | `chore/playwright-version-update` |
| `test/`     | Experimentelle Tests (Sandbox)                      | `test/reqres-auth-experiment`     |

---

## Workflow Schritt für Schritt

```
1. Branch erstellen (von main):
   git checkout main
   git pull origin main
   git checkout -b feature/mein-neues-feature

2. Änderungen vornehmen und committen:
   git add <dateien>
   git commit -m "feat: add GET test for JSONPlaceholder posts"

3. Branch pushen:
   git push origin feature/mein-neues-feature

4. Pull Request auf GitHub öffnen:
   → Basis: main
   → Beschreibung: Was wurde gemacht? Warum?

5. PR reviewen (oder selbst reviewen bei Solo-Arbeit)

6. Merge in main (über GitHub UI, Squash oder Merge Commit)

7. Branch löschen (nach Merge):
   git branch -d feature/mein-neues-feature
   git push origin --delete feature/mein-neues-feature
```

---

## Commit-Konventionen (Conventional Commits)

Wir nutzen [Conventional Commits](https://www.conventionalcommits.org/):

```
<typ>(<scope>): <kurze Beschreibung>
```

| Typ        | Wann                                               |
|------------|-----------------------------------------------------|
| `feat`     | Neue Funktion oder neuer Test                       |
| `fix`      | Fehlerbehebung                                      |
| `docs`     | Nur Dokumentation                                   |
| `chore`    | Konfiguration, Dependencies, kein Code              |
| `test`     | Tests hinzufügen oder ändern                        |
| `refactor` | Code-Umstrukturierung ohne Verhaltensänderung       |
| `ci`       | CI/CD Pipeline Änderungen                           |

**Beispiele:**
```
feat(api): add POST test for JSONPlaceholder
fix(ui): update login locator for SauceDemo
docs: add branch strategy documentation
chore: pin robotframework to version 7.4.2
ci: add headless browser flag to workflow
```

---

## Branch-Schutz (GitHub Settings)

Für `main` sollten folgende Schutz-Regeln aktiv sein:

- `Require a pull request before merging` ✓
- `Require status checks to pass before merging` ✓ (CI Pipeline muss grün sein)
- `Do not allow bypassing the above settings` ✓

> Diese Einstellungen werden im GitHub Repository unter  
> **Settings → Branches → Branch protection rules** konfiguriert.
