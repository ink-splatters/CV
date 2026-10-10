#import "@preview/modern-cv:0.10.0": *

#let default-accent-color = rgb("#262F99")
#let skill-color = rgb("#282f93")
#let skill-wrap-gap = 0.55em
#let skill-item-gap = 0.5em
// A category belongs more closely to its first row than to the preceding row.
#let skill-section-gap = 10pt
#let skill-heading-gap = 5.5pt
#let contribution-logo-slot = 28pt

#let cv-document(author: (:), body) = {
  show: resume.with(
    author: author,
    profile-picture: none,
    accent-color: default-accent-color,
    colored-headers: true,
    show-footer: false,
    paper-size: "a4",
    font: ("Roboto", "Source Sans Pro"),
    header-font: "Source Sans Pro",
  )
  show text: set text(hyphenate: false)
  set line(stroke: 0.5pt)
  set list(marker: ([•], [-]))
  body
}

#let about(body) = text(weight: "light", body)

#let entry-tail(body) = block(breakable: false, body)

/// Renders a resume entry with fixed two-column headers.
///
/// This matches modern-cv's resume-entry arguments, spacing, and heading
/// styles. Grid tracks keep the title and location stable across page breaks.
#let my-resume-entry(
  title: none,
  location: "",
  date: "",
  description: "",
  title-link: none,
  accent-color: default-accent-color,
  location-color: default-location-color,
) = {
  let title-content = if type(title-link) == str {
    link(title-link)[#title]
  } else {
    title
  }

  block(above: 1em, below: 0.65em, sticky: true)[
    #pad[
      #block(above: 0.7em, below: 0.7em)[
        #grid(
          columns: (1fr, auto),
          column-gutter: 10pt,
          align: (left + bottom, right + bottom),
          [== #title-content],
          text(fill: location-color)[#secondary-right-header(location)],
        )
      ]
      #if description != "" or date != "" [
        #grid(
          columns: (1fr, auto),
          column-gutter: 10pt,
          align: (left + bottom, right + bottom),
          [=== #description], tertiary-right-header(date),
        )
      ]
    ]
  ]
}

/// Separates adjacent resume entries without orphaning the rule at a page end.
#let resume-entry-divider() = block(
  width: 100%,
  above: 0pt,
  below: 0pt,
  sticky: true,
  line(length: 100%, stroke: 0.5pt),
)

// Project entry using modern-cv's heading and body styles.
#let contribution-reference(body) = text(
  size: 10pt,
  style: "normal",
  weight: "light",
  fill: color-darknight,
  body,
)

/// Describes a contribution for contributions(). Logo artwork can be optically
/// sized within the section's fixed 28pt slot without changing text alignment.
#let contribution-entry(
  name,
  url,
  logo,
  logo-size: contribution-logo-slot,
  reference: "",
  reference-url: none,
  description: "",
  body,
) = {
  assert(
    logo-size > 0pt and logo-size <= contribution-logo-slot,
    message: "logo-size must be positive and fit within the logo slot",
  )
  let repository = if reference == "" { none } else {
    contribution-reference[
      #link(if reference-url == none { url } else { reference-url })[
        #github-icon#h(3pt)#reference
      ]
    ]
  }
  (
    name: name,
    url: url,
    logo: image(logo, width: logo-size, height: logo-size, fit: "contain"),
    repository: repository,
    description: description,
    body: body,
  )
}

/// Renders contributions with a shared reference column measured from the
/// entries. `left` aligns reference icons; `right` aligns their trailing edges.
#let contributions(entries, reference-align: left) = context {
  assert(
    reference-align in (left, right),
    message: "reference-align must be left or right",
  )
  let reference-width = entries.fold(0pt, (width, entry) => {
    if entry.repository == none { width } else {
      calc.max(width, measure(entry.repository).width)
    }
  })

  for entry in entries {
    block(
      breakable: false,
      above: 1em,
      below: 1em,
    )[
      #grid(
        columns: (contribution-logo-slot, 1fr),
        column-gutter: 10pt,
        align: top,
        block(width: contribution-logo-slot, height: contribution-logo-slot)[
          #align(center + horizon, entry.logo)
        ],
        [
          #if entry.repository != none {
            grid(
              columns: (1fr, reference-width),
              column-gutter: 10pt,
              align: (left + bottom, reference-align + bottom),
              heading(level: 2, link(entry.url, entry.name)), entry.repository,
            )
          } else {
            heading(level: 2, link(entry.url, entry.name))
          }
          #if entry.description != "" {
            v(2pt)
            text(
              size: 10pt,
              style: "normal",
              weight: "light",
              fill: color-darknight,
              entry.description,
            )
          }
          #v(4pt)
          #resume-item[
            #set par(justify: false)
            #set list(spacing: 0.9em)
            #entry.body
          ]
        ],
      )
    ]
  }
}

#let skill-list(skills) = {
  set text(size: 10pt, weight: "light")
  set par(
    justify: false,
    leading: skill-wrap-gap,
  )
  align(left, skills.join(", "))
}

#let skill-label(
  label,
  size: 11pt,
  weight: "medium",
) = {
  align(right, text(
    label,
    size: size,
    weight: weight,
    fill: skill-color,
  ))
}

#let skill-row(
  category,
  values,
  above: 0pt,
  below: skill-item-gap,
  sticky: false,
) = block(
  above: above,
  below: below,
  sticky: sticky,
)[
  #pad(top: 2pt)[
    #grid(
      columns: (3fr, 8fr),
      gutter: 10pt,
      align: left + top,
      resume-skill-category(category), resume-skill-values(values),
    )
  ]
]

#let my-resume-skill-section(item, skills: (), divider: true) = {
  let values = if divider {
    (align(horizon, box(width: 100%, line(length: 100%, stroke: 0.5pt))),)
  } else {
    (skill-list(skills),)
  }

  skill-row(
    skill-label(item, size: 12pt, weight: "bold"),
    values,
    above: skill-section-gap,
    below: if divider { skill-heading-gap } else { skill-item-gap },
    sticky: divider,
  )
}

/// Renders an ordered sequence of skills under one label.
///
/// Each empty array inserts a line break at its position.
#let my-resume-skill-item(item, skills) = {
  let skill-lists = skills.split(())

  if skill-lists.len() == 1 {
    skill-row(
      skill-label(item),
      (skill-list(skill-lists.first()),),
    )
  } else {
    skill-row(
      skill-label(item),
      (
        stack(
          spacing: skill-wrap-gap,
          ..skill-lists.map(skill-list),
        ),
      ),
    )
  }
}

#let my-coverletter-content(body) = {
  pad(bottom: 1em)[
    #set par(spacing: 1.5em, first-line-indent: 0em, justify: true)
    #set text(weight: "light")
    #body
  ]
}
