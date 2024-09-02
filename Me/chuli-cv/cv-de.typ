#import "@local/chuli-cv:0.1.0": *
#import "@preview/fontawesome:0.1.0": *

#show: cv

#let icons = (
  phone: fa-phone(),
  homepage: fa-home(fill: colors.accent),
  linkedin: fa-linkedin(fill: colors.accent),
  github: fa-github(fill: colors.accent),
  xing: fa-xing(),
  mail: fa-envelope(fill: colors.accent),
  book: fa-book(fill: colors.accent),
  cook: fa-utensils(fill: colors.accent),
  bike: fa-biking(fill: colors.accent),
  game: fa-gamepad(fill: colors.accent),
  robot: fa-robot(fill: colors.accent),
  bed: fa-bed(fill: colors.accent),
  write: fa-pen-to-square(fill: colors.accent),
  talk: fa-comments(fill: colors.accent),
  code: fa-code(fill: colors.accent),
  paint: fa-paintbrush(fill: colors.accent),
  music: fa-music(fill: colors.accent),
  friends: fa-users(fill: colors.accent),
  beer: fa-beer(fill: colors.accent),
)

#header(
  full-name: [Naivy Pujol Méndez],
  job-title: [Softwareentwickler],
  socials: (
    (
      icon: icons.github,
      text: [npujol],
      link: "https://github.com/npujol"
    ),
    (
      icon: icons.mail,
      text: [naivy.luna\@gmail.com],
      link: "mailto://naivy.luna@gmail.com"
    ),
    (
      icon: icons.linkedin,
      text: [Naivy Pujol Méndez],
      link: "https://linkedin.com/in/npujolm/"
    ),
    (
      icon: icons.homepage,
      text: [Berlin, Deutschland],
      link: "#"
    ),
  ),
  profile-picture: image("media/avatar.jpeg")
)

#show: body => columns(2, body)
// NOTE: This is to fit the german content into the page
#set par(justify: true, leading: 0.55em)

#section("Beruferfahrung")
#entry(
  title: "Software Developer",  
  company-or-university: "InterContent Group", 
  date: "2021 - Heute", 
  location: "Berlin, Deutschland", 
  logo: image("media/intercontent.jpeg"),
  description: list(
    [Entwicklung und Implementierung von Microservices auf der AWS-Infrastruktur, einschließlich EC2, ECS, Lambda und Microsoft Azure Containers Apps, wobei jeder Dienst an die spezifischen Anforderungen angepasst wurde. Für eine effiziente Paketierung und Bereitstellung wurden Docker-Container verwendet.],   
    [Verwalten und automatisieren Sie den Prozess der Infrastrukturerstellung und -bereitstellung durch CI/CD-Pipelines mit GitHub Actions, Infrastructure as Code (IaC) mit Terraform und Konfigurationsmanagement mit YAML.],
    [Implementierung von Überwachungs- und Protokollierungslösungen mit Amazon CloudWatch und Sentry, um eine effiziente Problemlösung und Performance-Analyse zu ermöglichen. Die Postman-API wurde zum Testen und Validieren von API-Endpunkten verwendet.]
  ),
)
#entry(
  title: "Software Developer", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "2014 - 2019", 
  location: " Havanna, Kuba", 
  logo: image("media/universidad_de_las_ciencias_informaticas_logo.jpeg"),
  description: list(
    [Entwicklung der Website für die Verwaltung der Postgraduiertenaktivitäten der Universität unter Verwendung von Python, Django, Django REST Framework und PostgreSQL als Hauptdatenbank. Implementierung von Backend-Funktionalitäten unter Berücksichtigung der besten Praktiken in der Backend-Webentwicklung.],
    [Entwicklung und Einsatz von automatisierten Datenaufbereitungsaufgaben und Fehlererkennungsprozessen unter Verwendung von Celery und Redis zur Optimierung der Datenvorverarbeitung und zur Gewährleistung der Datenintegrität.],
    [Durchführung von Datenanalysen, Mustererkennung und prädiktiver Modellierung unter Verwendung von Python-Bibliotheken wie Jupyter, scikit-learn, NumPy, Pandas und Cython, um datengestützte Entscheidungsfindung und Erkenntnisse zu ermöglichen.]
  )
)

#section("Ausbildung")
#education-entry(
  title: "Master-Abschluss in Informatik", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "05/2016 - 12/2018", 
  location: "Havanna, Kuba", 
  logo: image("media/universidad_de_las_ciencias_informaticas_logo.jpeg"),
  gpa: "4.82",
  gpa_total: "5.0"
)
#education-entry(
  title: "Bachelor in Software Ingenieurwesen", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "09/2009 - 07/2014", 
  location: "Havanna, Kuba", 
  logo: image("media/universidad_de_las_ciencias_informaticas_logo.jpeg"), 
  gpa: "4.71",
  gpa_total: "5.0"
)

#section("Private Projekte")
#entry(
  title: "anki_wiktionary", 
  company-or-university: "Private Projekte", 
  date: "2020 - 2024", 
  location: "", 
  logo:image( "media/github_avatar.jpeg"), 
  description: list(
    [Entwicklung eines Projekts, das Anki-Notizen unter Verwendung von linguistischen Daten aus Wiktionary erstellt. Implementierung eines Telegram-Bots, die es Nutzern ermöglicht, zu interagieren und die Erstellung von Anki-Notizen anzufordern.],
    [Die Python-Telegram-Bot-Bibliothek wurde zur Erstellung und Verwaltung des Telegram-Bots verwendet, um die Erstellung von Notizen zu ermöglichen. Verwendung von deep-translator für die Sprachübersetzung bzw. von pydantic für die Datenvalidierung.],
    [Integration von Selenium WebDriver und Selenium for Web Automation, um die programmatische Erstellung und Verwaltung von Anki-Notizdecks direkt innerhalb der Anki-Anwendung zu ermöglichen.],
  )
)
#entry(
  title: "tts_stories", 
  company-or-university: "Personal Project", 
  date: "2021 - 2024", 
  location: "", 
  logo: image( "media/github_avatar.jpeg"), 
  description: list(
    [Entwicklung einer Text-to-Speech (TTS) CLI unter Verwendung von Python, die es dem Benutzer ermöglicht, Text in ein gesprochenes Audioformat umzuwandeln und dabei mehrere TTS-APIs und -Dienste wie Coqui und Google TTS zu nutzen.],
    [Verwendung von ffmpeg-python für die Audioverarbeitung und Manipulation, mit der Möglichkeit, die erzeugte erzeugten Audiodatei direkt an Telegram zu senden.]
  )
)

#section("Fähigkeiten")
#skill(
  skills: ("python", "django", "terraform", "golang", "aws", "azure", "devops", "docker", "javascript", "postgresql", "celery", "redis", "github actions", "yaml", "latex", "pandas", "pydantic", "git", "linux", "postman", "sentry"),
)

#section("Sprachen")
#language(
  name:"Spanisch",
  label:"Mütersprache",  
  nivel:5,
)
#language(
  name:"Deutsch",
  label:"B1",  
  nivel:3,
)
#language(
  name:"Englisch",
  label:"B1",  
  nivel:3,
)

#section("Meine Freizeit")
#piechart(
  activities: (
    (
      name: icons.friends,
      val: 0.01
    ),
    (
      name: icons.book,
      val: 0.01
    ),
    (
      name: icons.talk,
      val: 0.01
    ),
    (
      name: icons.code,
      val: 0.01
    ),
    (
      name: icons.robot,
      val: 0.009
    ),
    (
      name: icons.music,
      val: 0.009
    ), 
    (
      name: icons.game,
      val: 0.008
    ),
    (
      name: icons.write,
      val: 0.008
    ),
    (
      name: icons.bike,
      val: 0.007
    ), 
    (
      name: icons.cook,
      val: 0.007
    ),

    (
      name: icons.paint,
      val: 0.003
    ),
    (
      name: icons.beer,
      val: 0.002
    )
  )
)