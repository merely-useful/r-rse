# Course Assignments

<!-- Perspective for this section would be on the student, but the instructor
section would be of course on the instructor. Or should this be entirely 
targeted to the instructor? -->

This course is designed around completing at least two project assignments.
You would largely work on these assignments outside of class time.
Each project assignment has several milestones you would need to complete
throughout the course, usually due shortly after encountering them during
the course. The project assignments are to:

1. Create a small and simple package that you would complete on your own.
2. Make small and simple improvements to existing packages on GitHub that you
would complete on your own.
3. Create a slightly larger, team-based package that you would complete in a
group of 2-3 other learners. This last assignment is optional and depends on
the specific context of the course.

Each project assignment is described in more detail below.

## First project: Create a package on your own

The first assignment is to create a small, simple package. The *learning
objective* for this project is that you would practice and reinforce the skills 
and knowledge you've learned during the course and to start building your
confidence in package development that will help for the later assignments.

<!--
NOTE: I moved this due date to after chapter 13 rather than chapter 7, since
we could keep writing the final exercises to keep building up this package.
Plus, for those learners who will use this on their own, this would be nice to
keep going with.
-->

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
example for how to use it, how to install it, and how to contribute.
- A CONTRIBUTING guidelines and a Code of Conduct.
- Has a passing R CMD check on the Continuous Integration service (in this case
GitHub Actions).

The instructor will decide the exact details of what is required to complete this
assignment and what topic or problems the package should focus on.
For those who are doing this course on their own, the assignment is to create a
package that should creates some custom summaries of the climate, either local,
regional, national, or global. These summaries could include minimum and maximum
historical temperatures, how many days of rainy or cloudy days, or rainfall.
You can decide on which location to choose, but we recommend creating something
for your own city or region. Climate data is available from at the
[World Weather Information Service](https://worldweather.wmo.int/en/dataguide.html)
website.

For an example of what this might look like, see 
TODO: Add the repo of the example climate package.

## Second project: Each learner contributing to an existing package

Individual-based, small improvements to existing package: Used as second 
deliverable, due after "Community involvement". Should only build off of
and improve an existing package, so doesn't need many milestones. Used to
reinforce importance of having documentation that can involve the community.
Could be the final exercises of chapters between Build Management and 
Community Involvement.

    
- Improve existing package to fit best practices (Pull Request is optional, dependent
on maintainer wishes).

- potential examples include (link to GitHub search or reference to how to search GH)

- In all examples, include instructions for instructors on how to design their
own, more field-specific and class context-dependent problems.
    - Provide pretty concrete problems/examples, and then let individual
    instructors deviate to more student directed problems if they want. E.g.
    it's a lot easier for an instructor to evaluate an alternate project, if
    they already have an example to look at that they know will work out.


## Third project: Each group creating a package

IDEA: To start this at end of 

Optional, best used in longer length,
class-based courses where groups can be formed. Is third and final
deliverable. No need to have final exercises for this, instructor can decide.


- Package created as a team as the third deliverable (but indicate that this is
dependent on classes that allow group work, so instructor should use this if wanted)
    - Due after teamwork lesson (so they have learned the basic skills of package dev
    and now start from scratch with these skills to create a package)


## For instructors (add once file is merged)

Making an interesting project assignment can be quite difficult, so this section
gives some suggestions and guidance on how what the specific project should be.

Here are some general guidelines:

- The first project package description already provides a suggested package to
create. As the instructor you can modify this example to focus on weather
from a specific city, a specific time period, or different aspects of the weather
(e.g. temperature only).
- While the project package does not necessarily need to involve data, it might
be more motivating for the learners to work on if the project did include data of 
some time. R is a language predominantly used by researchers and data scientists
for doing data analysis, visualization, and related reporting. Given this,
learners taking this course are probably already familiar with these tasks and
would benefit more from the course if they see and use an application they are
familiar with.
    - If it doesn't involve data, it's still recommended to structure the project
    package around using or working with data in some way.
    
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

- A simple package for working with missing values. Some function within it could
include simpler versions of other functions like `naniar::count_missing()`,
`tidyr::replace_na()`, or `dplyr::na_if()`. The data to work with could be
anything that has missing values (or should have missing values), primarily to use
as a way to build and demonstrate the functions.

- Simple simulations like in [Nature of Code](https://natureofcode.com/). The
package might have a function for plotting a vector of zeros and one, functions
for evolving such a vector, and functions that the control evolution.

- (Advanced users) A package for "branded" analysis, for instance where the data
might be corporate/team/school colors and functions that might include a custom
ggplot2 theme for them.

## Expectations of learners for completing projects

- After Git lesson, to frequently and consistently commit and push to GitHub.
The GitHub history will be checked to confirm this happens.
- Complete the final exercise tasks shortly after finishing their associated
lesson.
