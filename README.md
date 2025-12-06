Dieses Repository enthält die Lösungen für die Praktikumsaufgaben im Modul Architektur von Rechnersystemen (ARBKVS). Die Aufgaben wurden in C implementiert und für das ATmega328P-Board der FH Aachen entwickelt.

Die Implementierung umfasst die Ansteuerung von Peripheriegeräten wie LED-Bargraph, 7-Segment-Anzeigen, Tastern und dem Analog-Digital-Wandler (ADC).

## Aufgabe 2: Lauflicht in C (`task2.c`)

In dieser Aufgabe wurde ein einfaches Lauflicht (Running Light) implementiert, das die Grundlagen der Bitmanipulation und Port-Steuerung demonstriert.

### Funktionen:
* **Startbedingung:** Das Lauflicht startet erst, nachdem der Taster (`SW1`) gedrückt und losgelassen wurde.
* **Laufrichtung:** Das Licht bewegt sich von rechts nach links und kehrt am Rand automatisch um.
* **Beschleunigung:** Bei jedem Richtungswechsel wird die Verzögerungszeit (`delay_ms`) mit dem Faktor `0.9` multipliziert, sodass das Licht immer schneller wird.
* **Abbruchbedingung:** Wenn die Verzögerungszeit unter 2 ms fällt, leuchten alle LEDs auf und das Programm kehrt in den Wartezustand zurück.

 ## Aufgabe 3: Lauflicht-Spiel (`task3.c`)

Aufbauend auf Aufgabe 2 wurde ein Reaktionsspiel entwickelt. Ziel ist es, die Laufrichtung des Lichts manuell zu ändern, genau bevor es den Rand erreicht.

### Spielregeln:
1.  **Richtungsumkehr:** Der Spieler muss den Taster drücken, wenn das Licht die äußersten LEDs (Randbereich) erreicht.
2.  **Fehlerbedingungen:**
    * *Zu früh:* Drückt der Spieler, während das Licht im inneren Bereich ist (`GAME_OVER_TOO_EARLY`), ist das Spiel verloren.
    * *Zu spät:* Verpasst der Spieler den Zeitpunkt und das Licht "läuft aus dem Bargraph" (`GAME_OVER_OUT_OF_BOUNDS`), ist das Spiel verloren.
3.  **Level-System:** Bei jedem erfolgreichen Richtungswechsel wird das Level erhöht und die Geschwindigkeit gesteigert.
4.  **Anzeige:** Das aktuelle Level wird live auf der **7-Segment-Anzeige** dargestellt.


## Aufgabe 4: Analog-Digital-Wandlung (`task4.c`)

In dieser Aufgabe wird der Mikrocontroller als digitales Voltmeter konfiguriert. Die analoge Spannung eines Potentiometers wird gemessen und visualisiert.

### Funktionen:
* **Spannungsmessung:** Einlesen der Spannung (0V - 5V) über den ADC-Kanal des Potentiometers.
* **LED-Bargraph:** Visualisierung des Pegels (0 LEDs = 0V, 5 LEDs = 2.5V, 10 LEDs = 5V).
* **7-Segment-Anzeige:** Ausgabe der exakten Spannung als Gleitkommazahl (z. B. `3.5`) mit korrekter kaufmännischer Rundung.
