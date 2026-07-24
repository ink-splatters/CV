#import "lib/lib.typ": *

#let date = "01.03.2018"
#let position = "The Guardian of the Galaxy"

#show: coverletter.with(
  author: (
    firstname: "I Am",
    lastname: "Groot",
    email: "groot@groot.groot",
    phone: "+1 477 666 666 8",
    github: "@groot",
    birth: "2006",
    positions: (
      position,
    ),
  ),
  font: ("Roboto", "Source Sans Pro"),
  header-font: "Source Sans Pro",
  profile-picture: none,
  language: "en",
  date: date,
  closing: text(""),
)

#hiring-entity-info(
  entity-info: (
    target: "The Guardians of the Galaxy",
    name: "Star-Lord",
    street-address: "",
    city: "Kylos",
  ),
  date: date,
)

#letter-heading(
  job-position: position,
  addressee: "recruiter",
)

#par(spacing: 2em)[]

#my-coverletter-content[
  I Am Groot.

  I Am Groot... I Am Groot. _I Am Groot_ (Kylos). I Am Groot! I Am Groot, I Am Groot — Ko-Rel. I Am Groot...

  I Am Groot? *I Am Groot!* I Am Groot, I Am Groot, I Am Groot: Gamora. I Am Groot! I Am Groot, I Am Groot.

  I Am Groot. I Am Groot, I Am Groot, I Am Groot. I Am Groot? I Am Groot! I Am Groot — I Am Groot, I Am Groot, I Am Groot.

  _I Am Groot._
]
