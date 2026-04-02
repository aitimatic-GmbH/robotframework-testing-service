*** Settings ***
# =============================================================================
# SETTINGS - Hier werden Bibliotheken und Ressourcen importiert
#
# BuiltIn ist die Standard-Bibliothek von Robot Framework.
# Sie ist immer verfügbar — kein Import nötig.
# Aber wir importieren sie hier explizit zur Demonstration.
# =============================================================================
Library     BuiltIn


*** Variables ***
# =============================================================================
# VARIABLES - Hier werden Variablen definiert
#
# Variablen-Typen in Robot Framework:
#   ${SCALAR}    = ein einzelner Wert (String, Zahl, Boolean)
#   @{LIST}      = eine Liste von Werten
#   &{DICT}      = ein Dictionary (Schlüssel-Wert-Paare)
#
# Konvention: Variablennamen in GROSSBUCHSTABEN
# =============================================================================
${GRUSS}            Hallo Robot Framework!
${ZAHL}             42
${BOOLESCH}         ${TRUE}

@{FARBEN}           Rot    Grün    Blau

&{PERSON}           name=Max Mustermann    alter=30    stadt=Berlin


*** Test Cases ***
# =============================================================================
# TEST CASES - Die eigentlichen Tests
#
# Jeder Test hat:
#   - Einen beschreibenden Namen (erste Zeile)
#   - Eine Abfolge von Keywords (eingerückte Zeilen darunter)
#
# Einrückung: 4 Leerzeichen oder 1 Tab — konsequent verwenden!
# =============================================================================

Mein erster Test
    # Log gibt eine Nachricht im Report aus
    Log    ${GRUSS}
    # Should Be Equal prüft ob zwei Werte gleich sind
    Should Be Equal    ${GRUSS}    Hallo Robot Framework!

Mit Zahlen arbeiten
    # Arithmetic ist möglich
    ${ergebnis}=    Evaluate    ${ZAHL} * 2
    Log    Das Ergebnis ist: ${ergebnis}
    Should Be Equal As Numbers    ${ergebnis}    84

Mit Listen arbeiten
    # Länge einer Liste prüfen
    ${laenge}=    Get Length    ${FARBEN}
    Should Be Equal As Numbers    ${laenge}    3
    # Ein Element aus der Liste holen (Index beginnt bei 0)
    Log    Erste Farbe: ${FARBEN}[0]
    Should Be Equal    ${FARBEN}[0]    Rot

Mit Dictionaries arbeiten
    # Auf Dictionary-Werte zugreifen
    Log    Name: ${PERSON}[name]
    Log    Stadt: ${PERSON}[stadt]
    Should Be Equal    ${PERSON}[name]    Max Mustermann

Eigene Keywords verwenden
    # Keywords die weiter unten definiert sind (im *** Keywords *** Abschnitt)
    ${nachricht}=    Erstelle Begrüssungsnachricht    Anna
    Log    ${nachricht}
    Should Contain    ${nachricht}    Anna

Bedingungen und Schleifen
    # FOR-Schleife über eine Liste
    FOR    ${farbe}    IN    @{FARBEN}
        Log    Aktuelle Farbe: ${farbe}
    END
    # IF-Bedingung
    IF    ${ZAHL} > 10
        Log    Die Zahl ist grösser als 10
    ELSE
        Log    Die Zahl ist kleiner oder gleich 10
    END


*** Keywords ***
# =============================================================================
# KEYWORDS - Wiederverwendbare Aktionsblöcke
#
# Keywords sind wie Funktionen in Programmiersprachen.
# Sie können Parameter entgegennehmen und Werte zurückgeben.
# =============================================================================

Erstelle Begrüssungsnachricht
    # Argument definieren (in eckigen Klammern)
    [Arguments]    ${name}
    # RETURN gibt einen Wert zurück und beendet das Keyword (ab RF 5, Standard in RF 7)
    RETURN    Willkommen, ${name}! Schön dass du Robot Framework lernst.

Prüfe ob Zahl Positiv Ist
    [Arguments]    ${zahl}
    Should Be True    ${zahl} > 0    Die Zahl ${zahl} ist nicht positiv!
