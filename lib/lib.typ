#import "@preview/modern-cv:0.10.0": *

#let default-accent-color = rgb("#262F99")
#let skill-color = rgb("#282f93")
#let skill-wrap-gap = 0.55em
#let skill-item-gap = 0.6em
// #let skill-list-gap = 0.9em

/// Renders a resume entry with fixed two-column headers.
///
/// This matches modern-cv's resume-entry arguments, spacing, and heading
/// styles. Grid tracks keep the title and location stable across page breaks.
#let cv-entry(
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

/// Separates adjacent work entries without orphaning the rule at a page end.
#let work-entry-divider() = block(
  width: 100%,
  above: 0pt,
  below: 0pt,
  sticky: true,
  line(length: 100%, stroke: 0.5pt),
)

#let skill-list(skills) = {
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

#let skill-row(category, values) = {
  set block(below: skill-item-gap)
  set pad(top: 2pt)

  pad[
    #grid(
      columns: (3fr, 8fr),
      gutter: 10pt,
      align: left + top,
      resume-skill-category(category), resume-skill-values(values),
    )
  ]
}

#let my-resume-skill-section(item, skills: (), divider: true) = {
  let values = if divider {
    (align(horizon, box(width: 100%, line(length: 100%, stroke: 0.5pt))),)
  } else {
    (skill-list(skills),)
  }

  skill-row(
    skill-label(item, size: 12pt, weight: "bold"),
    values,
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
