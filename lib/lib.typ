#import "@preview/modern-cv:0.10.0": *

#let default-accent-color = rgb("#262F99")
#let skill-color = rgb("#282f93")
#let skill-line(skills) = {
  set par(
    justify: true,
    justification-limits: (
      spacing: (min: 80%, max: 120%),
      tracking: (min: -0.02em, max: 0.02em),
    ),
  )
  set text(hyphenate: false)
  skills.join(", ")
}

#let skill-label(label, size: 11pt, weight: "medium") = {
  align(right, text(
    label,
    size: size,
    weight: weight,
    fill: skill-color,
  ))
}

#let my-resume-skill-section(item, skills: (), divider: true) = {
  let section = resume-skill-item(
    skill-label(item, size: 12pt, weight: "bold"),
    if divider {
      (align(horizon, box(width: 100%, line(length: 100%))),)
    } else {
      (skill-line(skills),)
    },
  )

  if divider {
    pad(top: 0.7em, section)
  } else {
    section
  }
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
    resume-skill-item(
      skill-label(item),
      (skill-line(rows.first()),),
    )
  } else {
    resume-skill-item(
      skill-label(item),
      (
        stack(
          spacing: 0.7em,
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
