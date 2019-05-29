## [Project](https://github.com/Bobrinik/goodreads_bulk_ratings)

- I wanted to export ratings for a set of books into a CSV file. I wanted to use bash for this objective because I thought it could be easier to do than using python or other technologies.

## Project Difficulties

- Finding out the right tools for the job and then figuring out how these tools can be seamlessly connected to achieve a task.

## Solution

- [Data Science at the Command Line](https://www.datascienceatthecommandline.com/)  provided a general idea about the tools and how they can be glued together. StackOverflow and trial and error approach was later used to come up with a final solution.

## Technology used
- bash
- curl
- xml2json - to convert Goodreads API response into JSON
- jq - to be able to query the resulting JSON
- json2csv
