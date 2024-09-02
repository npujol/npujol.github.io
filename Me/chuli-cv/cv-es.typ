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
  job-title: [Ingeniera de Software],
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
      text: [Berlin, Alemania],
      link: "#"
    ),
  ),
  profile-picture: image("media/avatar.jpeg")
)

#show: body => columns(2, body)

#section("Experiencia Profesional")
#entry(
  title: "Desarrolladora de Software",  
  company-or-university: "InterContent Group", 
  date: "2021 - Today", 
  location: "Berlin, Germany", 
  logo: image("media/intercontent.jpeg"),
  description: list(
    [Desarrollo de aplicaciones web con Django y Golang],
    [Desarrollo de APIs RESTful con Python y Django],
    [Desarrollo de APIs GraphQL con Python y Django],
    [Desarrollo de APIs GraphQL con GraphQL-Playground y React],
    [Desarrollo de APIs GraphQL con Apollo-Client y React],
    [Desarrollo de APIs GraphQL con Apollo-Server y React],
    [Desarrollo de APIs GraphQL con Hasura y React],
    [Desarrollo de APIs GraphQL con GraphQL-Playground y React],
    [Desarrollo de APIs GraphQL con Apollo-Client y React],
    [Desarrollo de APIs GraphQL con Apollo-Server y React],
    [Desarrollo de APIs GraphQL con Hasura y React]
  )
)
#entry(
  title: "Especialista en ciencias informáticas", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "2014 - 2019", 
  location: " La Habana, Cuba", 
  logo: image("media/universidad_de_las_ciencias_informaticas_logo.jpeg"),
  description: list(
    [Desarrollo del sitio de gestión de actividades de posgrado de la universidad. Utilizando Python, Django, PostgreSQL, RESTful WebServices],
    [Testing of websites following the TDD process and according to the planned schedules],
    [Identiﬁcación de los problemas descubiertos por las pruebas o por los comentarios de los clientes, y la corrección de los problemas o la remisión de los mismos al personal apropiado para su corrección],
    [Automatización de las tareas de limpieza de datos y identiﬁcación de errores utilizando Celery y Redis],
    [ Análisis de datos, búsqueda de patrones, y desarrollo de predicción utilizando Jupyter, scikit-learn, NumPy y Pandas]
  )
)

#section("Educación")
#education-entry(
  title: "Máster en Informática Avanzada", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "05/2016 - 12/2018", 
  location: "La Habana, Cuba", 
  logo: image("media/universidad_de_las_ciencias_informaticas_logo.jpeg"),
  gpa: "4.82",
  gpa_total: "5.0"
)
#education-entry(
  title: "Ingeniería en Ciencias Informáticas", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "09/2009 - 07/2014", 
  location: "La Habana, Cuba", 
  logo: image("media/universidad_de_las_ciencias_informaticas_logo.jpeg"), 
  gpa: "4.71",
  gpa_total: "5.0"
)

#section("Proyectos Personales")
#entry(
  title: "anki_wiktionary", 
  company-or-university: "Personal Project", 
  date: "2020 - 2024", 
  location: "", 
  logo: image("media/github_avatar.jpeg"), 
  description: list(
    [Desarrollado un proyecto para importar datos de Wiktionary y crear una baraja de Anki, para aprender nuevas palabras de una manera más eficaz],
    [Usando Python, Beautiful Soup, y Anki API para crear el proyecto],
    [Implementacion de funciones como buscar palabras, añadir nuevas palabras, eliminar palabras y actualizar palabras existentes],
    [Desarrollado un bot de telegram para ser utilizado para obtener nuevas tarjetas de anki],
    [Integrado con APIs externas para proporcionar recursos y orientación para el apoyo a la salud mental basado en las respuestas de los usuarios]
  )
)
#entry(
  title: "tts_stories", 
  company-or-university: "Personal Project", 
  date: "2021 - 2024", 
  location: "", 
  logo: image("media/github_avatar.jpeg"), 
  description: list(
    [Desarrollado un proyecto para crear historias de voz de una manera más eficaz],
    [Usando diferentes fuentes de procedencia de las historias, tanto online como local],
    [Desarrollado un bot de telegram para ser utilizado para salvar las historias de voz generadas]
  )
)

#section("Habilidades e Intereses")
#skill(
  skills: ("python", "django", "terraform", "golang", "aws", "azure", "devops", "docker", "javascript", "postgresql", "celery", "redis", "github actions", "yaml", "latex", "pandas", "pydantic", "git", "linux", "postman", "sentry", "bash", "typst"),
)

#section("Idiomas")
#language(
  name:"Español",
  label:"Nativo",  
  nivel:5,
)
#language(
  name:"Alemán",
  label:"Medio",  
  nivel:3,
)
#language(
  name:"Inglés",
  label:"Medio",  
  nivel:3,
)

#section("Mi tiempo libre")
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