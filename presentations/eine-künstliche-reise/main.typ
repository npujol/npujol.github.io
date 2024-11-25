#import "@preview/touying:0.5.3": *
#import themes.university: *

#import "@preview/numbly:0.1.0": numbly

#show: university-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [EINE KÜNSTLICHE REISE],
    subtitle: [KI-Halluzinationen],
    author: [Naivy Pujol Méndez],
    date: datetime.today(),
    institution: [VHS Mitte],
    footer: [Simple slides],
  ),
)

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide(authors: ([Naivy Pujol Méndez]))

// Im Bereich der Künstlichen Intelligenz (KI) ist eine Halluzination (alternativ auch Konfabulation genannt) ein überzeugend formuliertes Resultat einer KI, das nicht durch Trainingsdaten gerechtfertigt zu sein scheint und objektiv falsch sein kann.[1]

// Solche Phänomene werden in Analogie zum Phänomen der Halluzination in der menschlichen Psychologie als von Chatbots erzeugte KI-Halluzinationen bezeichnet. Ein wichtiger Unterschied ist, dass menschliche Halluzinationen meist auf falschen Wahrnehmungen der menschlichen Sinne beruhen, während eine KI-Halluzination ungerechtfertigte Resultate als Text oder Bild erzeugt.

#matrix-slide(columns: 1)[
  #image("assets/back.jpg", width: 100%, height: 100%)
]

#focus-slide[
  GPT-4o, Llama, Claude, Gemini, Midjourney, Stable Diffusion, Flux...
]

= Große Sprachmodelle(LLMs)

== Häufige Halluzinationen 

- Falsche Fakten: Modelle können erfundene Informationen als wahr präsentieren.  
- Ungenauigkeiten: Modelle verwechseln oft Namen, Orte oder Ereignisse.  
- Plagiat-ähnliche Inhalte: Wiederverwendung von Trainingsdaten, ohne sie als solche zu kennzeichnen.  

#matrix-slide(columns: 1)[
  #image("assets/back2.jpg", width: 100%, height: 100%)
]

#focus-slide[
  Wie kann man KI-Halluzinationen erkennen?
]

= KI-Halluzinationen

== Erkennung der KI-Halluzinationen

- Cross-Check mit vertrauenswürdigen Quellen: Verifikation gegen externe, verlässliche Datenquellen.  
- Widersprüche in der Antwort erkennen: KI-Ausgaben auf interne Logik prüfen.  
- Fachwissen nutzen: Experten können KI-Antworten hinterfragen und bewerten.  

#matrix-slide(columns: 1)[
  #image("assets/back3.jpg", width: 100%, height: 100%)
]
#focus-slide[
  Kann der spezifische Begriff KI-Halluzination Computer unangemessen vermenschlichen?
]

= Ein Mensch?

== Menschliches Verhalten?

- Mustererkennung: Modelle arbeiten ähnlich wie Menschen, indem sie Kontext und Wahrscheinlichkeiten bewerten.  
- Unvollständige Informationen: Wie Menschen können KIs bei fehlenden Daten plausible, aber falsche Antworten geben.  
- Anthropomorphisierung: Menschliche Eigenschaften werden KI-Systemen zugeschrieben, was zu Missverständnissen führen kann.  

#matrix-slide(columns: 1)[
  #image("assets/back4.jpg", width: 100%, height: 100%)
]
= Fazit

== Zu Mitnehmen

// - KI und LLM können Unternehmen einige interessante Möglichkeiten bieten. Um jedoch die besten Ergebnisse zu erzielen, müssen sich die Nutzer der Risiken und Grenzen dieser Technologien bewusst sein.

// - Letztendlich sind KI-Lösungen am wertvollsten, wenn sie die menschliche Intelligenz ergänzen, anstatt sie zu ersetzen.

// - Sofern sich Nutzer und Unternehmen darüber im Klaren sind, dass LLMs Informationen fälschen und Ausgabedaten anderweitig verifizieren können, wird das Risiko der Verbreitung oder Aufnahme von Fehlinformationen minimiert.
- Chancen nutzen: KI kann Unternehmen vielfältige Möglichkeiten bieten.  
- Bewusstsein schaffen: Nutzer müssen sich der Risiken und Grenzen bewusst sein.  
- Ergänzen statt ersetzen: KI-Lösungen sind am wertvollsten, wenn sie menschliche Intelligenz unterstützen.  
- Fehlinformationen vermeiden: Verifizierung und kritisches Hinterfragen minimieren Risiken.  

#matrix-slide(columns: 1)[
  #image("assets/back5.jpg", width: 100%, height: 100%)
]
