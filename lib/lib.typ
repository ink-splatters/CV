#import "@preview/modern-cv:0.10.0": *

#let default-accent-color = rgb("#262F99")
#let skill-color = rgb("#282f93")
#let skill-item-gap = 0.55em
#let skill-subgroup-gap = 0.9em

#let skill-line(skills) = {
  set par(
    justify: false,
    leading: 0.5em,
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
    (skill-line(skills),)
  }

  skill-row(
    skill-label(item, size: 12pt, weight: "bold"),
    values,
  )
}

#let my-resume-skill-item(item, skills) = {
  let rows = ()
  let row = ()
  for skill in skills {
    if type(skill) == array {
      if row.len() > 0 {
        rows.push(row)
      }
      row = skill
    } else {
      row.push(skill)
    }
  }
  if row.len() > 0 {
    rows.push(row)
  }

  if rows.len() == 1 {
    skill-row(
      skill-label(item),
      (skill-line(rows.first()),),
    )
  } else {
    skill-row(
      skill-label(item),
      (
        stack(
          spacing: skill-subgroup-gap,
          ..rows.map(skill-line),
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
