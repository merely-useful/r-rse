# Course design

## Basic design components

These are to develop a compass for developing and structuring the material.
Many may have a strong focus on "in class" etc, 
but this is to give a direction on how to write those sections
(e.g. having the perspective that an instructor will be reading these sections).

- **Learning outcome/goal**: Ultimately, to be able to create an R package, that:
    - Passes checks and requirements to (potentially) be submitted to CRAN
    - Incorporates best practices in package development 
    (unit testing, continuous integration, version control)
    - Has code that is written and developed in a readable, clean, and
    style-guide consistent format, so others can more easily read it
    - Is designed to involve the community, such as gaining potential contributors
    (including licensing, code of conduct, contributing guidelines, 
    well described README)
    - Has user-friendly (i.e. targeted to a novice to intermediate user)
    documentation and tutorials on how to use the package (e.g. a nice website)
    - Is adequately structured to make package management and maintenance easier
    (e.g. with Issue Templates, Project Boards, Labels, contributing guidelines)

- **Teaching/learning activities**:
    - In class portion: 
        - Some lectures for those material that aren't coding heavily
        (e.g. for lessons to involve community, being a good community member)
        - Live coding (with instructor)
        - Exercises that expand on material covered with instructor that 
        solve a provided problem, with or without scaffolding
        - Could include dedicated group work sessions after the teamwork lessons
        (at end), with instructor and helpers available in class
    - Out of class: 
        - Individual project to build a package of a known problem, to solidify 
        their learning. Projects to choose from could be known and simple
        problems in data analysis that may or may not have already been
        implemented as an R package
        - Another individual but small project, done after the "involving
        community" chapter, to take existing packages that don't implement some
        best practices and improving them. Pull requests to original package
        would be optional and would only be done depending on whether maintain
        wants them.
            - For a potential list of packages, could include in "For Instructors"
            instructions for how to find packages that learners could use. (e.g.
            how to search through GitHub).
            - For self-learners, could provide some tips on how to find packages
            like this.
        - Group project to create a slightly more advanced R package based on a
        set of potential problems to choose from.
            - This is built as a set of instructions for instructors on how to 
            create this project that fits with the needs and context of the given
            class.
        - Informal formative assessments (or instructions on types that instructor 
        could use or make)
        - Reading assignments to motivate and inform on content given in-class

- **Assessment and feedback activities**:
    - Deadlines for milestones to achieve for projects, with instructor feedback on progress
    - Out-of-class formative assessments based on maybe learnr tutorials?
    - After completing in-class exercises, go over them as class?
    - Peer review activities? E.g. exercises that have a rubric that go with them that can be used to guide peer review.
    - Assigned TA for group to get feedback on group work project?
    - Contribute to existing packages on GitHub by submitting PR

- **Content for the instructor and teaching assistant**
    - Such as guidelines and suggestions on what do to at each portion of the course
    for both instructor and teaching assistant
    - A TA could be assigned to a group and be the learners direct link to getting feedback
    and help
    - TA could act as Carpentry-style helpers during the live coding sessions
    - Guidelines on how to make this course either online or in person

- Key resources to use for this:
  - R packages: usethis, devtools, drake?, pkgdown, testthat, styler, rmarkdown
  - Online books: [R Packages](https://r-pkgs.org/) 
  (we differentiate from this amazing book by structuring everything around 
  this being a course, with exercises, assessments, (group?) projects, 
  instructions/comments/notes for instructors, etc)
    - We use the R Packages book as a reference
    
## Chapter outline

Course chapters and content need to be strongly aligned with learning outcome/goal.
Here is a draft outline to guide development.

- Overview of material
    - How to use, why to use, general details and overall description
        - Reference "For Instructors" section for instructors to check out

- Syllabus
    - Overview of course
    - Why to learn it and learning outcomes
    - Intended learner (personas, assumptions and expectations etc)
    - What makes this course different
        - Go over the "Whole Game" chapter of the R Packages book (https://r-pkgs.org/whole-game.html)
        to give an idea of what it all looks like in the end of this course

- Folder and file structure (RStudio R Projects)
    - File paths, very basics of the shell (in RStudio)
    - Working directory and how it is set with RStudio R Projects
    - Making use of the fs package for filesystem management
    
- Setting up an R package
    - Describing what a package is and when or why to make one
    - Using devtools, usethis for development
        - e.g. `use_devtools()` and `use_usethis()`.
    - Developing functions
        - Basic explanation of what a function is and its components
        - Actual process of taking code and converting it into a function will
        be done in next chapter
    - Making and using datasets
        - Downloading zipf data at this point, using `usethis::use_data_raw()`, write the script to download the data and process into `data/` via `usethis::use_data()`.

- Function development in a package environment
    - Process of creating non-function code, checking that it works, then
      converting it into a function
        - There are several workflows for this (create in vignette Rmd, make a dev/creating.R
        script as a development location, developing in the examples Roxygen
        section, "Untitled1.R"). Which to use?
            - Mostly *how workflow actually looks like*.
    - Building functions up slowly, making small targeted functions that build up
    into a bigger more complex functions
    - Process control (if-else, stop, return, switch)
    - Dependency management
    - Function documentation (with roxygen2), part 1
        - To use `@examples` to help with creating function

- Version control: Using Git and GitHub as a sole user (part 1)
    - Using Git in RStudio (standard add-commit-history)
    - Using Git in the Terminal of RStudio (moving in history with checkout,
    creating branches, adding and updating remotes)
    - Setting up GitHub for R package (make use of usethis), pushing and pulling
        - E.g. with pr_* functions from usethis
    - Emphasize exercises to practice, not showing output of git in code chunks (they are a pain to edit afterwards)

- Checking correctness of code
    - Using basic debugging strategies ("breakpoints", simple `print()` or `stop()` calls, `debug()`, `browser()`)
    - Unit test (with testthat)
    - Code coverage (with covr)
    - With devtools

- Build management and workflow
    - With devtools
    - Running local CRAN checks
    - General workflow (load_all, test, check)
    - Pre-push running test, build, and check
    - Continuous integration using GitHub Actions 

- Developing documentation and tutorials on usage
    - Vignettes, README (with rmarkdown and usethis)
    - Function documentation (with roxygen2), part 2
    - Running spell checks and styling (with spelling and styler)

- Exposing your package to the world with a website:
    - Setting up a website (with pkgdown)
    - Customizing the themes
    - Getting all resources and material organized
    - Defining lifecycle of your package and individual functions (with lifecycle)

- Involving the community:
    - Designing your package to be used by or contributed to from the community
    (refer to Mozilla Science Labs Open Leaders material)
    - Contributing guidelines 
    - Being inclusive (code of conduct)
    - Licensing
    - Governance
    - NEWS file
    - reprex?

- Version control: Workflows around using GitHub (part 2)
    - Make use of R builtin tools like the usethis pull request helpers 
    (and learning how to make use of this yourself)
    - Using this workflow as a team or as a contributor

- Project management of your package development (either sole or in a team)
    - Issue tracking
    - Labeling
    - Project boards
    - Milestones

- Preparing for package release
    - Check builds on other systems (with rhub)
        - Etiquette for using (mostly free) servers and external build systems like GitHub Actions and rhub (e.g. don't overuse them)
    - Managing your versions, git tagging

- R package development in a team-based environment
    - Making use of GitHub Organizations/Teams
    - Branch protection, member roles
    - Resolving conflict, personality differences
    - Running meetings, code of conduct
    - Decision making
    - Governance
    - Issue assignment
    - Relying on and using code of conduct to build culture and standards
    - Setting up SSH, two-factor authentication, PATs?

- Appendices (ideas)
    - Other uses of packages
        - RStudio addins, snippets, rmarkdown templates, templates
        - rstudioapi
    - Template of Code of Conduct for participating in course
    - Instructions to potential instructors
    - Solutions
    - Glossary
    - References

## Final projects for formal assessment

Three project deliverables, with individual milestones for each, for learners:

- Package created alone as the first deliverable
    - Due after "package release" lesson
    - This will be a simpler package compared to the next one
- Improve existing package to fit best practices (Pull Request is optional, dependent
on maintainer wishes).
- Package created as a team as the third deliverable (but indicate that this is
dependent on classes that allow group work, so instructor should use this if wanted)
    - Due after teamwork lesson (so they have learned the basic skills of package dev
    and now start from scratch with these skills to create a package)

Ideas to how project should be started:

- We give them several general problems to solve, with or without data that needs to be worked
    - Or existing solutions that could be improved on
- We get them to re-create an existing package that could use more work or development
(there are no end to these types of packages, especially the earlier ones)
    - Could get them to refactor code to be more readable
- We get them to choose an existing package to develop on their own and then
to contribute back (e.g. develop a website for the package and update the documentation)
- In all examples, include instructions for instructors on how to design their
own, more field-specific and class context-dependent problems.
    - Provide pretty concrete problems/examples, and then let individual
    instructors deviate to more student directed problems if they want. E.g.
    it's a lot easier for an instructor to evaluate an alternate project, if
    they already have an example to look at that they know will work out.
