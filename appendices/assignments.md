# Assignments

## For learners

At the end of this book, you will have written at least one R package. 
To help you get there, we provide "assignments" --- 
projects we expect you to complete as you move through the book.
You would largely work on these assignments outside of class time.
Each project assignment has several milestones you would need to complete
throughout the book, usually due shortly after encountering them in the book.
The project assignments are to:

1. Create a small and simple package on your own.
2. Make small and simple improvements to a package on GitHub.
3. Create a slightly larger, team-based package that you would complete in a
group of 2-3 other learners. This last assignment is *optional* and depends on
the specific context of the course this book will be used in.

Each project assignment is described in more detail below. In addition
to the descriptions, included throughout this section are notes targeted to
those learners who are working through and learning from this book on their own.

### First project: Create a package on your own

The first assignment is to create a small, simple package. The *learning
objective* for this project is to practice and reinforce the skills 
and knowledge you've learned throughout the book and to start building your
confidence in package development that will help for the later assignments.

The project assignment is recommended to be **due** immediately after the
Package Release lesson (Chapter \@ref(package-release)). At the end of each
chapter there is a final exercise that gives you tasks to do that guide you in
completing this first project assignment. These final exercises are used as 
milestones to ensure you are making progress on your assignment.

An *acceptable* package for completing the assignment would have at a *minimum*:

- Two to three functions.
- (Optional) a dataset with associated roxygen documentation and an R script that
generated, extracted, and/or processed the dataset.
- A unit test for each function.
- Roxygen documentation for each function.
- A README with enough detail to know what the package aims to do, a simple
example for how to use it, how to install it, and a link to details about how to
contribute.
- CONTRIBUTING guidelines, a License, and a Code of Conduct.
- Has a passing R CMD check on the Continuous Integration service (in this case
GitHub Actions).

TODO: Add some optional things to add to the package, for those keen on doing it.

Some optional things to add include:

- A pkgdown website.
- Passing local rhub checks.

For an instructor led course, your instructor will decide the exact
details of what is required to complete this assignment and what topic
or problems the package should focus on.

> For the *self-directed learners* who are going through this book on their
own, the assignment is to create a package that creates some custom
summaries of the climate, either local, regional, national, or global.
These summaries could include minimum and maximum historical
temperatures, how many days of rainy or cloudy days, or amount of rainfall. You
can decide on which location to choose, but we recommend creating
something for your own city or region. Climate data is available from the
TODO: Add link to climate data
website.
TODO: Add more detail and descriptions on how to do this.

For an example of what this might look like, see 
TODO: Add the repo of the example climate package.
Each final exercise will link to this example package to use as a reference
for how the final exercise should or could be done.

### Second project: Contributing to an existing package on your own

The second assignment is to contribute to an existing package. The *learning
objective* for this project is to practice and reinforce the skills 
and knowledge that you've learned on community involvement and of the
importance that documentation has for involving the community.
Completing this assignment will make it easier to finish the first
assignment. The project assignment is recommended to be started after
Chapter \@ref(community-involvement) and be **due**
immediately after the Chapter \@ref(github-workflows).
Like with the first project, at the end of Chapters 
\@ref(community-involvement) and \@ref(github-workflows) are some final
exercises with tasks to help guide you in completing this second project
assignment.

1. Choose a package to improve by either:
    1. Selecting one from the list of packages provided by the instructor.
    2. Selecting one based on a search of GitHub, based on the search
    instructions provided by the instructor.
    3. If a *self-directed learner*, see the instructions below.
2. Improve the package to better fit with best practices based on what you've learned.
    - You don't need to update everything in the package, only a few things that
    you are capable of and related to what you've learned so far.
    - You can optionally submit a Pull Request of the changes, but this depends
    on whether the maintainer is open to Pull Requests. If you want to submit a
    Pull Request, check if an issue already exists for improving something
    and comment in the Issue that you will try to address the issue in a Pull
    Request. Otherwise, open a new Issue and ask if the maintainer would be open
    to Pull Requests.
    
> For *self-directed learners*, 
TODO: include instructions on how to find packages to contribute to.

### Third project: Creating a package as a team

This assignment is *optional* as it depends on multiple factors like class size,
duration of the course, or virtual vs in-person settings. This would be the third
and final deliverable for the course. There are no final exercises in each
chapter that learners need to complete related to this assignment. Exercises and
the structure of the group work would be determined by the instructor. This
assignment would best be due sometime after the team-work lesson 
(Chapter \@ref(team-package-development)).

- Using the same process as was done with the first project assignment,
complete a package as a team, using the tools taught in
Chapters \@ref(community-involvement), \@ref(github-workflows),
and \@ref(team-package-development).

### Rubric and expectations of the learner

TODO: Can fill this out more as we work on book

The expectations for completing the project assignments change as the content 
progresses.

- After the first Git lesson (REF), project should have frequent and consistent
commits and, after the GitHub lesson (REF), pushes to GitHub.
The GitHub history will be checked to confirm this happens.
- Tasks in the final chapter exercises should be completed shortly after
finishing the chapter.
