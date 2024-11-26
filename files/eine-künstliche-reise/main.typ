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
  #image("assets/back.png", width: 100%, height: 100%)
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
  #image("assets/back2.png", width: 100%, height: 100%)
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
  #image("assets/back3.png", width: 100%, height: 100%)
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
  #image("assets/back4.png", width: 100%, height: 100%)
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
  #image("assets/back5.png", width: 100%, height: 100%)
]


// 3-minuten Präsentation

// ### **Einleitung**
// Guten Tag, mein Name ist Naivy Pujol Méndez, und heute möchte ich euch/Ihnen ein wichtiges Thema im Bereich der Künstlichen Intelligenz vorstellen: **KI-Halluzinationen**.  
// In meinem Vortrag befasse ich mich mit der Frage, was KI-Halluzinationen sind, wie sie erkannt werden können und ob der Begriff „Halluzination“ für Computer überhaupt angemessen ist.  

// Wussten Sie eigentlich, dass große Sprachmodelle, wie GPT-4 oder Midjourney, gelegentlich Ergebnisse erzeugen, die überzeugend erscheinen, aber objektiv falsch sind? Genau solche Phänomene nenne ich heute KI-Halluzinationen.  

// ---

// ### **Hauptteil**  
// #### **1. Häufige Arten von Halluzinationen**
// Zunächst möchte ich darüber sprechen, wie sich KI-Halluzinationen äußern.  
// - Große Sprachmodelle können falsche Fakten präsentieren, die so überzeugend formuliert sind, dass sie auf den ersten Blick glaubwürdig wirken.  
// - Häufig verwechseln sie Namen, Orte oder Ereignisse, was zu Ungenauigkeiten führt.  
// - Zusätzlich ähneln einige Ausgaben Plagiaten, da sie Inhalte aus Trainingsdaten wiederverwenden, ohne dies klar zu kennzeichnen.  

// #### **2. Erkennung von KI-Halluzinationen**  
// Kommen wir nun zum zweiten Punkt: Wie erkennt man solche Halluzinationen?  
// - **Cross-Check mit vertrauenswürdigen Quellen** ist ein effektives Mittel, um die Korrektheit der KI-Ausgaben zu überprüfen.  
// - **Widersprüche in der Antwort** können ebenfalls Hinweise darauf geben, dass die Informationen ungenau oder erfunden sind.  
// - **Fachwissen** ist entscheidend, da Experten fehlerhafte Aussagen besser bewerten können.  

// #### **3. Menschliches Verhalten?**  
// Ein weiterer Punkt, den ich ansprechen möchte, ist die Anthropomorphisierung von KI.  
// Modelle wie GPT-4 arbeiten zwar ähnlich wie Menschen, indem sie Muster und Wahrscheinlichkeiten erkennen. Dennoch entstehen Halluzinationen oft durch unvollständige Informationen – ähnlich wie bei Menschen, die plausible, aber falsche Vermutungen äußern.  

// Doch Achtung: Wenn wir KI-Systemen menschliche Eigenschaften zuschreiben, kann das zu Missverständnissen führen. Ist der Begriff „Halluzination“ für Computer also wirklich gerechtfertigt?  

// ---

// ### **Fazit**
// Ich komme jetzt zum Schluss.  
// Zusammenfassend möchte ich betonen, dass KI-Systeme und große Sprachmodelle wie GPT-4 viele Chancen bieten, jedoch auch Risiken bergen.  
// - Unternehmen und Nutzer müssen sich der **Grenzen und Risiken** bewusst sein.  
// - KI-Lösungen sind am wertvollsten, wenn sie die **menschliche Intelligenz ergänzen**, anstatt sie zu ersetzen.  
// - Durch **kritisches Hinterfragen** und die Verifizierung von KI-Ausgaben kann das Risiko von Fehlinformationen minimiert werden.  

// Vielen Dank für Ihre Aufmerksamkeit. Gibt es Fragen?  

