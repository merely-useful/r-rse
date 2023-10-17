# Instructions to instructors {#for-instructors}

The instructional design of the learning material contained in this
book revolves around three key concepts:

1. *Participatory live-coding* lessons, where participants join with
instructors to write and troubleshoot code step-by-step. 
This method encourages participants to actively engage with the
material, to build muscle memory through typing, and to learn how to
handle mistakes, rather than passively observing content.
 [@Brow2018; @Wils2018]
2. *In-class and out-of-class exercises* that include independent
reading of assigned material and hands-on, practical work.
The hands-on exercises are interspersed throughout the live-coding
sessions to complement and reinforce the content as well
as give learners the opportunity to work through the code and problems
at their own pace. Reading activities are used to build concept-heavy
knowledge.
3. *Project- and problem-based assignments* that include both independent
and group-based work. For the project assignments, learners reinforce
what they learned through a new problem and challenge. The independent
work prepares them for the optional group-based work, where
they can practice team-based skills like communication, project management,
and running meetings.

## Instructor persona

TODO: Fill in.

## Modifying the assignments

Making an interesting project assignment can be quite difficult, so this section
gives some suggestions and guidance on what the specific project assignment should be.
The specific type and number of assignments are of course ultimately decided by
the instructor of the course, but at the least, this book was designed with
two main project assignments (first and second) in mind, as described in Appendix 
@sec-assignments). While
the specific details of the assignments are completed by the instructor,
this section contains some general advice and guidelines. This advice can be used
for all three project assignments but is largely specific to the **first project
assignment**.

- Package problems are always better if they are targeted to the background 
knowledge of the instructor and the learners. Field-specific and class
context-dependent problems will more likely be remembered and learned than other
problems.
- In the final exercises, we provide a suggested package about weather
summaries, as described above. As the instructor, one way to tailor the first
project assignment for your class is to modify this example to focus on weather
from a local city, a specific time period, or different aspects of the weather
(e.g. temperature only).
- While the project package does not necessarily need to involve data, it might
be more motivating for the learners to work on if the project does include data. 
R is a language predominantly used by researchers and data scientists
for doing data analysis, visualization, and related reporting. Given this,
learners using this book (for a course or otherwise) are probably already
familiar with these tasks and would benefit more if they see and use an
application they are familiar with.

TODO: Add some examples that instructors can based off of and deviate if needed.
TODO: update or revise this list below.
TODO: Add instructions about how students will name their new package (ch3 final exercise.)

Here are some example datasets that could form the basis for the project packages:

- [NYC Dog Licensing dataset](https://data.cityofnewyork.us/Health/NYC-Dog-Licensing-Dataset/nu7n-tubp)
- [Statistics Canada](https://www150.statcan.gc.ca/n1/en/type/data)
- The openly licensed [Airbnb data](http://insideairbnb.com/get-the-data.html)
- [Atmospheric CO~2~](https://scrippsco2.ucsd.edu/data/atmospheric_co2/index.html)
- [fivethirty eight article about visits to national parks](https://fivethirtyeight.com/features/the-national-parks-have-never-been-more-popular/)
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

TODO: Expand on this about whether instructors should have this or not.

The learners should either be given a list of some potential packages to improve
or be given detailed instructions on how to find potential packages. If you want
to provide a list of possible packages, here is some instructions on how to find
these packages to give the learners:

TODO: Include instructions here, eg what search terms to use in GitHub etc and how to find packages.
TODO: Include some example packages to try to base off of.

- CRAN Views FIXME: expand on this.

### Third assignment

TODO: Expand on this that it is optional.

The specific problem or package that groups will create depends heavily on their
background knowledge and skills, as well as that of the instructor. To make the 
most of learning and progress, groups should preferably be given a set of pre-existing
problems that a package could solve. This problem can be an already-solved problem;
in fact, given learners a solved problem will make it easier for them to practice
the skills and tools of research software engineering, rather than the domain
specific knowledge and skills that might be required for solving an as-yet-solved
problem.

TODO: Fill in with more advice for this project assignment.

## Brainstorming

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

- **Content for the instructor and teaching assistant**
    - Such as guidelines and suggestions on what do to at each portion of the course
    for both instructor and teaching assistant
    - A TA could be assigned to a group and be the learners direct link to getting feedback
    and help
    - TA could act as Carpentry-style helpers during the live coding sessions
    - Guidelines on how to make this course either online or in person

- **Assessment and feedback activities**:
    - Deadlines for milestones to achieve for projects, with instructor feedback on progress
    - Out-of-class formative assessments based on maybe learnr tutorials?
    - After completing in-class exercises, go over them as class?
    - Peer review activities? E.g. exercises that have a rubric that go with them that can be used to guide peer review.
    - Assigned TA for group to get feedback on group work project?
    - Contribute to existing packages on GitHub by submitting PR
