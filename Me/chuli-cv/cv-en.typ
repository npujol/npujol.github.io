#import "@preview/chuli-cv:0.1.0": *
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
  job-title: [Software Developer],
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
      text: [Berlin, Germany],
      link: "#"
    ),
  ),
  profile-picture: image("media/avatar.jpeg")
)

#show: body => columns(2, body)
#set par(justify: true)
#section("Experience")
#entry(
  title: "Software Developer",  
  company-or-university: "InterContent Group", 
  date: "2021 - Today", 
  location: "Berlin, Germany", 
  logo: image("media/intercontent.jpeg"),
  description: list(
    [Development and deployment of microservices on Amazon Web Services (AWS) infrastructure, including Amazon EC2, Amazon ECS, AWS Lambda, and Microsoft Azure Containers Apps, customizing each service to meet specific requirements. Employed Docker containers for efficient packaging and deployment.],   
    [Management and automation of the infrastructure provisioning and deployment process through Continuous Integration/Continuous Deployment (CI/CD) pipelines using GitHub Actions, Infrastructure as Code (IaC) with Terraform, and configuration management with YAML.],
    [Implementation of monitoring and logging solutions using Amazon CloudWatch and Sentry, enabling efficient troubleshooting and performance analysis. Utilized the Postman API for testing and validating API endpoints.],
  ),
)
#entry(
  title: "Software Developer", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "2014 - 2019", 
  location: "Havanna, Cuba", 
  logo: image(
    "media/universidad_de_las_ciencias_informaticas_logo.jpeg",
    width: 10pt, 
    height: 10pt
  ),
  description: list(
    [Development of the university's postgraduate activities' management website using Python, Django, Django REST Framework, and PostgreSQL as the primary databases. Implemented backend functionality, adhering to best practices in back-end web development.],
    [Automatization of data cleaning tasks and error identification processes using Celery and Redis, streamlining data preprocessing and ensuring data integrity.],
    [Data analysis, pattern finding, and predictive modeling using Python libraries such as Jupyter, scikit-learn, NumPy, pandas, and Cython; enabling data-driven decision-making and insights.],
  )
)

#section("Education")
#education-entry(
  title: "Master's degree in advanced informatic", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "05/2016 - 12/2018", 
  location: "Havanna, Cuba", 
  logo: image(
    "media/universidad_de_las_ciencias_informaticas_logo.jpeg",  
  ),
  gpa: "4.82",
  gpa-total: "5.0"
)
#education-entry(
  title: "Bachelor of Software Engineering", 
  company-or-university: "Universidad de las Ciencias Informáticas", 
  date: "09/2009 - 07/2014", 
  location: "Havanna, Cuba", 
  logo: image(
    "media/universidad_de_las_ciencias_informaticas_logo.jpeg",
  ), 
  gpa: "4.71",
  gpa-total: "5.0"
)

#section("Personal Projects")
#entry(
  title: "anki_wiktionary", 
  company-or-university: "Personal Project", 
  date: "2020 - 2024", 
  location: "", 
  logo: image("media/github_avatar.jpeg"), 
  description: list(
    [Development of a project that generates Anki notes by using the linguistic data from Wiktionary. Implemented a Telegram bot as the primary interface, allowing users to interact and request the creation of Anki notes.],
    [Utilization of the python-telegram-bot library to build and manage the Telegram bot, facilitating real-time communication and note generation requests. Employed deep-translator and pydantic libraries for automatic language translation and data validation, respectively.],
    [Integration with Selenium WebDriver and Selenium for web automation, enabling the programmatic creation and management of Anki note decks directly within the Anki application.],
  )
)
#entry(
  title: "tts_stories", 
  company-or-university: "Personal Project", 
  date: "2021 - 2024", 
  location: "", 
  logo: image("media/github_avatar.jpeg"), 
  description: list(
    [Development of a Text-to-Speech (TTS) command-line interface (CLI) tool using Python, enabling users to convert text into spoken audio format leveraging multiple TTS APIs and services such as Coqui and Google TTS.],   
    [Utilization of ffmpeg-python for audio processing and manipulation, providing the option of sending the generated audio file directly to Telegram.],
  )
)

#section("Skills")
#skill(
  skills: ("python", "django", "terraform", "golang", "aws", "azure", "devops", "docker", "javascript", "postgresql", "celery", "redis", "github actions", "yaml", "latex", "pandas", "pydantic", "git", "linux", "postman", "sentry", "bash", "typst"),
)

#section("Languages")
#language(
  name:"Spanish",
  label:"Native",  
  nivel:5,
)
#language(
  name:"German",
  label:"B1",  
  nivel:3,
)
#language(
  name:"English",
  label:"B1",  
  nivel:3,
)

#section("My Time")
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