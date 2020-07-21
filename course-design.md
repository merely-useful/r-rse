# Course design components for *RSE in R*

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
    - Has user-friendly (i.e. targetted to a novice to intermediate user)
    documentation and tutorials on how to use the package (e.g. a nice website)
    - Is adequately structured to make package management and maintanence easier
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
        - Group work/project creating an R package based on a set of (given?) problems
        - Formative assessments like coding with immediate feedback on correct/incorrect
        (via learnr package? Esp with new update to RStudio in version 1.3)
          - Need to consider that writing correctness tests is time consuming
        - Reading assignments to motivate and inform on content given in-class

- **Assessment and feedback activities**:
    - Deadlines for milestones to acheive for projects, with instructor feedback on progress
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

- Syllabus
    - Overview of course
    - Why to learn it
    - What makes this course different
        - Go over the "Whole Game" chapter of the R Packages book (https://r-pkgs.org/whole-game.html)
        to give an idea of what it all looks like in the end of this course

- Folder and file structure (RStudio R Projects)
    - Filepaths, very basics of the shell (in RStudio)
    - Making use of the fs package for filesystem management
    
- Setting up an R package
    - Describing what a package is and when or why to make one
    - Using devtools, usethis for development
        - e.g. `use_devtools()` and `use_usethis()`.
    - Developing functions
        - Basic explanation of what a function is and its components
        - Acutal process of taking code and converting it into a function will
        be done in next chapter
    - Making and using datasets

- Function development in a package environment
    - Process of creating non-function code, checking that it works, then
      converting it into a function
    - Building functions up slowly, making small targeted functions that build up
    into a bigger more complex function
    - Process control (if-else, stop, return, switch)
    - Dependency management
    - Function documentation (with roxygen2), part 1
        - To use `@examples` to help with creating function

- (Idea) Additional features to make use of
    - RStudio addins, snippets, rmarkdown templates, templates
    - rstudioapi? (as a component of the package, maybe to insert text in rstudio, etc)
    - Things that a package can do aside from functions
    - Idea: Shiny app here?

- Version control: Using Git and GitHub as a sole user (part 1)
    - Using Git in RStudio (standard add-commmit-history)
    - Using Git in the Terminal of RStudio (moving in history with checkout,
    creating branches, adding and updating remotes)
    - Setting up GitHub for R package (make use of usethis), pushing and pulling

- Checking correctness of code
    - Using basic debugging strategies ("breakpoints", simple `print()` or `stop()` calls)
    - Unit test (with testthat)
    - Code coverage (with covr)
    - With devtools

- Build management
    - With devtools
    - Maybe with drake?
        - Cover it minimally or as a later stand-alone topic.
    - Pre-push running test, build, and check
    - Continuous integration using Travis and/or GitHub Actions and AppVeyor 
    (for Windows building)

- Developing documentation and tutorials on usage
    - Vignettes, README (with rmarkdown and usethis)
    - Function documentation (with roxygen2), part 2
    - learnr tutorials via `use_tutorials()`?
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
    - NEWS file

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
    - Running local CRAN checks
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

## Final projects for formal assessment

Two project deliverables for learners:

- Package created alone as the first deliverable
    - Due after "package release" lesson
- Package created as a team as the second deliverable
    - Due after teamwork lesson (so they have learned the basic skills of package dev
    and now start from scratch with these skills to create a package)
    - After these 

Ideas to how project should be started:

- We give them several general problems to solve, with or without data that needs to be worked
- We let them decide on the problem (this is tricky since it requires domain knowledge)
- We get them to re-create an existing package that could use more work or development
(there are no end to these types of packages, especially the earlier ones)
    - Could get them to refactor code to be more readable
- We get them to choose an existing package to develop on their own and then
to contribute back (e.g. develop a website for the package and update the documentation)
