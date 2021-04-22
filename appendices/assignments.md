# Course Assignments

<!-- Perspective for this section would be on the student, but the instructor
section would be of course on the instructor. Or should this be entirely 
targeted to the instructor? -->

## For learners

At the end of this book, you will have written at least one R package. 
To help you get there, we provide "assignments" --- 
projects we expect you to complete as you move through the book.
You would largely work on these assignments outside of class time.
Each project assignment has several milestones you would need to complete
throughout the course, usually due shortly after encountering them during
the course. The project assignments are to:

1. Create a small and simple package on your own.
2. Make small and simple improvements to a package on GitHub.
3. Create a slightly larger, team-based package that you would complete in a
group of 2-3 other learners. This last assignment is *optional* and depends on
the specific context of the course.

Each project assignment is described in more detail below. In addition
to the descriptions, notes are included throughout for those learners
who are working through this book and learning on their own.

### First project: Create a package on your own

The first assignment is to create a small, simple package. The *learning
objective* for this project is to practice and reinforce the skills 
and knowledge you've learned during the course and to start building your
confidence in package development that will help for the later assignments.

The project assignment is recommended to be **due** immediately after the
Package Release lesson (Chapter \@ref(package-release)). At the end of each
chapter there is a final exercise that gives you tasks to do that guide you in
completing this first project assignment. These final exercises are used as 
milestones to ensure you are making progress on your assignment.

An *acceptable* package for completing the assignment would have at a *minimum*:

- Two-three functions.
- (Optional) a dataset with associated roxygen documentation and an R script that
generated or extracted the dataset.
- A unit test for each function.
- Roxygen documentation for each function.
- A README with enough detail to know what the package aims to do, a simple
example for how to use it, how to install it, and a link to how to contribute.
- CONTRIBUTING guidelines, a License, and a Code of Conduct.
- Has a passing R CMD check on the Continuous Integration service (in this case
GitHub Actions).

TODO: Add some optional things to add to the package, for those keen on doing it.

Some optional things to add include:

- A pkgdown website.
- Local rhub checks.

For an instructor led course, your instructor will decide the exact
details of what is required to complete this assignment and what topic
or problems the package should focus on.

> For the *self-directed learner* who are doing this course on their
own, the assignment is to create a package that creates some custom
summaries of the climate, either local, regional, national, or global.
These summaries could include minimum and maximum historical
temperatures, how many days of rainy or cloudy days, or rainfall. You
can decide on which location to choose, but we recommend creating
something for your own city or region. Climate data is available from
at the
TODO: Add link to climate data
website.
TODO: Add more detail and descriptions on how to do this.

For an example of what this might look like, see 
TODO: Add the repo of the example climate package.

### Second project: Contributing to an existing package on your own

The second assignment is to contribute to an existing package. The *learning
objective* for this project is to practice and reinforce the skills 
and knowledge you've learned on community involvement and of the
importance of having documentation that can involve the community.
Completing this assignment will make it easier to finish the first
assignment. The project assignment is recommended to be **due**
immediately after the Chapter \@ref(github-workflows).
Like with the first project, at the end of Chapters 
ref(TODO: Add ref) and \@ref(github-workflows) there are some final exercises
with tasks to help guide you in completing this second project
assignment. 

1. Choose a package to improve by either:
    1. Selecting one from the list of packages provided by the instructor.
    2. Selecting one based on a search of GitHub, based on the search
    instructions provided by the instructor.
    3. If a *self-directed learner*, see the instructions below.
2. Improve the package to better fit with best practices based on what you've learned.
    - You don't need to update everything in the package, only what you can and
    what you've learned so far.
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
duration of course, or virtual vs in-person. This would be the third and final 
deliverable for the learners. There are no final exercises in each chapter that
learners need to complete related to this assignment. Exercises and the
structure of the group work would be determined by the instructor.
This assignment would best be due sometime after the teamwork lesson (REF).

- Using the same process as was done with the first project assignment,
complete a package as a team, using the tools taught in the team and community
chapters (TODO: REF).

### Rubric and expectations of the learner

TODO: Can fill this out more as we work on book

The expectations for completing the project assignments change as the course 
progresses.

- After the first Git lesson (REF), project should have frequent and consistent
commits and, after the GitHub lesson (REF), pushes to GitHub.
The GitHub history will be checked to confirm this happens.
- Tasks in the final chapter exercises should be completed shortly after
finishing the chapter.

## For instructors (add once file is merged)

Making an interesting project assignment can be quite difficult, so this section
gives some suggestions and guidance on what the specific project assignment should be.
The specific type and number of assignments are of course ultimately decided by
the instructor of the course, but at the least, this course is designed with
two main project assignments in mind, as described above. The specific details of
the assignments are completed by the instructor, however, this section contains
some general advice and guidelines.

- Package problems are always better if they are targeted to the background 
knowledge of the instructor and the learners. Field-specific and class
context-dependent problems will more likely be remembered and learned than other
problems.
- In the final exercises, we provide a suggested package - 
weather summaries, as described above. 
As the instructor, one way to tailor your class, 
is to modify this example to focus on weather from a local city, 
a specific time period, or different aspects of the weather (e.g. temperature only).
- While the project package does not necessarily need to involve data, it might
be more motivating for the learners to work on if the project does include data. 
R is a language predominantly used by researchers and data scientists
for doing data analysis, visualization, and related reporting. Given this,
learners taking this course are probably already familiar with these tasks and
would benefit more from the course if they see and use an application they are
familiar with.

TODO: Add some examples that instructors can based off of and deviate if needed.

Here are some example datasets that could form the basis for the project packages:

- [NYC Dog Licensing dataset](https://data.cityofnewyork.us/Health/NYC-Dog-Licensing-Dataset/nu7n-tubp)
- [Statistics Canada](https://www150.statcan.gc.ca/n1/en/type/data)
- The openly licensed [Airbnb data](http://insideairbnb.com/get-the-data.html)
- [Atmospheric CO~2~](https://scrippsco2.ucsd.edu/data/atmospheric_co2/index.html)

- [fivethirty eight article about visits to national parks](https://fivethirtyeight.com/features/the-national-parks-have-never-been-more-popular/).  A package might include the data (which is a bit painful to get from the NPS), plus a 

- (For advanced users) [Denmark Statistics](https://www.statbank.dk/statbank5a/default.asp?w=1920) 
(through the R package [dkstat](https://github.com/rOpenGov/dkstat) or the 
[StatBank API](https://www.dst.dk/en/Statistik/brug-statistikken/muligheder-i-statistikbanken/api))

Other potential examples to use for non-dataset-based project packages include:

- A simple package for working with missing values. Functions within it could
include simpler versions of other functions like `naniar::count_missing()`,
`tidyr::replace_na()`, or `dplyr::na_if()`. The data to work with could be
anything that has missing values (or should have missing values), primarily to use
as a way to build and demonstrate the functions.

- Simple simulations like cellular automata in [Nature of Code](https://natureofcode.com/). The
package might have a function for plotting a vector of zeros and one, functions
for evolving such a vector, and functions that the control evolution.

- (Advanced users) A package for "branded" analysis, for instance where the data
might be corporate/team/school colors and functions that might include a custom
ggplot2 theme for them.

### Second assignment

The learners should either be given a list of some potential packages to improve
or be given detailed instructions on how to find potential packages. If you want
to provide a list of possible packages, here is some instructions on how to find
these packages to give the learners:

TODO: Include instructions here, eg what search terms to use in GitHub etc and how to find packages.
TODO: Include some example packages to try to base off of.

- CRAN Views FIXME: expand on this.

### Third assignment

The specific problem or package that groups will create depends heavily on their
background knowledge and skills, as well as that of the instructor. To make the 
most of learning and progress, groups should preferably be given a set of pre-existing
problems that a package could solve. This problem can be an already-solved problem;
in fact, given learners a solved problem will make it easier for them to practice
the skills and tools of research software engineering, rather than the domain
specific knowledge and skills that might be required for solving an as-yet-solved
problem.

TODO: Fill in with more advice for this project assignment.
