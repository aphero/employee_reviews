def find_nsa_agent(name, array)
  array.select {|b| b.match(/\b#{name}\b/)}
end

array = ["have u seen the teacher today?"]
name = "mason"

find_nsa_agent(name, array)

end

REGULAR EXPRESSIONS
REGEX
\d for digits
\d* for 0 or more grouped digits
\d+ for 1 or more grouped digits
-\d+ for - and digits
-?\d+ optional - and digits
^ starts with
$ ends with
^-?\d+$ starts with optional - and 1 or more grouped digits and that's all because of the $
. any character
\. looks for decimal

.match returns the first result in the object
.scan returns all of the results from the object
.sub swaps out the supplied info for the first result
.gsub swaps out the supplied info for all results
