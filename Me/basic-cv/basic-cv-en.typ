#import "@preview/basic-resume:0.1.0": *

// Put your personal information here, replacing mine
#let name = "Naivy Pujol Méndez"
#let location = "Berlin, Germany"
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

== Work Experience

#work(
  title: "Software Developer",
  location: "Berlin, Germany",
  company: "InterContent Group",
  dates: dates-helper(start-date: "2021", end-date: "Today"),
)
  - Development and deployment of microservices on Amazon Web Services (AWS) infrastructure, including Amazon EC2, Amazon ECS, AWS Lambda, and Microsoft Azure Containers Apps, customizing each service to meet specific requirements. Employed Docker containers for efficient packaging and deployment.
  - Management and automation of the infrastructure provisioning and deployment process through Continuous Integration/Continuous Deployment (CI/CD) pipelines using GitHub Actions, Infrastructure as Code (IaC) with Terraform, and configuration management with YAML.
  - Implementation of monitoring and logging solutions using Amazon CloudWatch and Sentry, enabling efficient troubleshooting and performance analysis. Utilized the Postman API for testing and validating API endpoints.

#work(
  title: "Software Developer",
  location: "Havanna, Cuba",
  company: "Universidad de las Ciencias Informáticas",
  dates: dates-helper(start-date: "2014", end-date: "2019"),
)
  - Development of the university's postgraduate activities' management website using Python, Django, Django REST Framework, and PostgreSQL as the primary databases. Implemented backend functionality, adhering to best practices in back-end web development.
  - Automatization of data cleaning tasks and error identification processes using Celery and Redis, streamlining data preprocessing and ensuring data integrity.
  - Data analysis, pattern finding, and predictive modeling using Python libraries such as Jupyter, scikit-learn, NumPy, pandas, and Cython; enabling data-driven decision-making and insights.

== Education

#edu(
  institution: "Universidad de las Ciencias Informáticas",
  location: "Havanna, Cuba",
  dates: dates-helper(start-date: "May 2016 ", end-date: "December 2018"),
  degree: "Master's degree in advanced informatic",
)
- *Cumulative GPA:* 4.82\/5.0
- *Relevant Coursework:* Advanced Mathematics, Advanced Programming Topics Computational Mathematics, Computer Security, Flexible methods for data consultation and analysis, Functional programming, Statistical Methods for Scientific Research.

#edu(
  institution: "Universidad de las Ciencias Informáticas",
  location: "Havanna, Cuba",
  dates: dates-helper(start-date: "November 2009 ", end-date: "July 2014"),
  degree: "Bachelor of Software Engineering",
)
- *Cumulative GPA:* 4.71\/5.0
- *Relevant Coursework:* Data Structures, Algebra I and II, Discrete Mathematics, Software Engineering, Programming, Mathematics, Computational Intelligence, Digital Systems


== Projects

#project(
  name: "anki_wiktionary",
  dates: dates-helper(start-date: "2020", end-date: "Today"),
  url: "github.com/npujol/anki_wiktionary",
)
- Development of a project that generates Anki notes by using the linguistic data from Wiktionary. Implemented a Telegram bot as the primary interface, allowing users to interact and request the creation of Anki notes. Utilization of the python-telegram-bot library to build and manage the Telegram bot, facilitating real-time communication and note generation requests. Employed deep-translator and pydantic libraries for automatic language translation and data validation, respectively. Integration with Selenium WebDriver and Selenium for web automation, enabling the programmatic creation and management of Anki note decks directly within the Anki application.

== Skills

- *Skills:* python, django, terraform, golang, aws, azure, devops, docker, javascript, postgresql, celery, redis, github actions, yaml, latex, pandas, pydantic, git, linux, postman, sentry, bash, typst
- *Languages:* Spanish(Native), German(B1), English(B1)
