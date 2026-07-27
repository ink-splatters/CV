#import "@preview/modern-cv:0.10.0": *

#let default-accent-color = rgb("#262F99")
#let skill-color = rgb("#282f93")
#let skill-wrap-gap = 0.55em
#let skill-item-gap = 0.6em
// #let skill-list-gap = 0.9em

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
