# Dependencies
- curl for calling GoodReads API
- xml2json // node package
- jq // lets query json object and create a new json scheme
- json2csv // csv is easier to use with spreadsheet software or sql (csvsql tool is fun)

# How to use it?
- Get GoodReads API key and put it in the right place in ./grab_books_data.sh script
- Replace my array of books with yours and run ./grab_books_data.sh
- final.csv is storage for final results

# Problems
- GoodReads API returns array of matched books for the search query. I select the first one because it seems to be the most accurate match (Might not be the case).
