#import "@preview/basic-resume:0.1.0": *

// Put your personal information here, replacing mine
#let name = "Naivy Pujol Méndez"
#let location = "Berlin, Deutschland"
#let email = "naivy.luna@gmail.com"
#let github = "github.com/npujol"
#let linkedin = "linkedin.com/in/npujolm"
#let personal-site = "npujol.github.io"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  personal-site: personal-site,
)

== Beruferfahrung

#work(
  title: "Software Developer",
  location: "Berlin, Deutschland",
  company: "InterContent Group",
  dates: dates-helper(start-date: "2021", end-date: "Heute"),
)
  - Entwicklung und Implementierung von Microservices auf der AWS-Infrastruktur, einschließlich EC2, ECS, Lambda und Microsoft Azure Containers Apps, wobei jeder Dienst an die spezifischen Anforderungen angepasst wurde. Für eine effiziente Paketierung und Bereitstellung wurden Docker-Container verwendet.
  - Verwalten und automatisieren Sie den Prozess der Infrastrukturerstellung und -bereitstellung durch CI/CD-Pipelines mit GitHub Actions, Infrastructure as Code (IaC) mit Terraform und Konfigurationsmanagement mit YAML.
  - Implementierung von Überwachungs- und Protokollierungslösungen mit Amazon CloudWatch und Sentry, um eine effiziente Problemlösung und Performance-Analyse zu ermöglichen. Die Postman-API wurde zum Testen und Validieren von API-Endpunkten verwendet.

#work(
  title: "Software Developer",
  location: "Havanna, Kuba",
  company: "Universidad de las Ciencias Informáticas",
  dates: dates-helper(start-date: "2014", end-date: "2019"),
)
  - Entwicklung der Website für die Verwaltung der Postgraduiertenaktivitäten der Universität unter Verwendung von Python, Django, Django REST Framework und PostgreSQL als Hauptdatenbank. Implementierung von Backend-Funktionalitäten unter Berücksichtigung der besten Praktiken in der Backend-Webentwicklung.
  - Entwicklung und Einsatz von automatisierten Datenaufbereitungsaufgaben und Fehlererkennungsprozessen unter Verwendung von Celery und Redis zur Optimierung der Datenvorverarbeitung und zur Gewährleistung der Datenintegrität.
  - Durchführung von Datenanalysen, Mustererkennung und prädiktiver Modellierung unter Verwendung von Python-Bibliotheken wie Jupyter, scikit-learn, NumPy, Pandas und Cython, um datengestützte Entscheidungsfindung und Erkenntnisse zu ermöglichen.

== Ausbildung

#edu(
  institution: "Universidad de las Ciencias Informáticas",
  location: "Havanna, Kuba",
  dates: dates-helper(start-date: "Mai 2016 ", end-date: "Dezember 2018"),
  degree: "Master-Abschluss in Informatik",
)
- *GPA:* 4.82\/5.0
- *Relevante Kursarbeit:* Advanced Mathematics, Advanced Programming Topics Computational Mathematics, Computer Security, Flexible methods for data consultation and analysis, Functional programming, Statistical Methods for Scientific Research.

#edu(
  institution: "Universidad de las Ciencias Informáticas",
  location: "Havanna, Kuba",
  dates: dates-helper(start-date: "November 2009 ", end-date: "Juli 2014"),
  degree: "Bachelor in Software Ingenieurwesen",
)
- *GPA:* 4.71\/5.0
- *Relevante Kursarbeit:* Data Structures, Algebra I and II, Discrete Mathematics, Software Engineering, Programming, Mathematics, Computational Intelligence, Digital Systems


== Projekte

#project(
  name: "anki_wiktionary",
  dates: dates-helper(start-date: "2020", end-date: "Heute"),
  url: "github.com/npujol/anki_wiktionary",
)
- Entwicklung eines Projekts, das Anki-Notizen unter Verwendung von linguistischen Daten aus Wiktionary erstellt. Implementierung eines Telegram-Bots, die es Nutzern ermöglicht, zu interagieren und die Erstellung von Anki-Notizen anzufordern. Die Python-Telegram-Bot-Bibliothek wurde zur Erstellung und Verwaltung des Telegram-Bots verwendet, um die Erstellung von Notizen zu ermöglichen. Verwendung von deep-translator für die Sprachübersetzung bzw. von pydantic für die Datenvalidierung. Integration von Selenium WebDriver und Selenium for Web Automation, um die programmatische Erstellung und Verwaltung von Anki-Notizdecks direkt innerhalb der Anki-Anwendung zu ermöglichen.

== Fähigkeiten

- *Skills:* python, django, terraform, golang, aws, azure, devops, docker, javascript, postgresql, celery, redis, github actions, yaml, latex, pandas, pydantic, git, linux, postman, sentry, bash, typst, TDD, selenium
- *Sprachen:* Spanisch(Mütersprache), Deutsch(B1), Englisch(B1)
