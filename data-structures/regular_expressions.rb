# ranges to denote
[a-z]
[A-Z]
[0-9]

# shorthand for ranges
\w === [0-9a-zA-Z_]
\d === [0-9]
\s === white space (tabs, regular space, newline)

# these are shorthand for anything NOT contained in the ranges
\W === ![0-9a-zA-Z_]
\D === ![0-9]
\S === !spaces

. === matches everything but new lines
\.\ === literal period if needed (escaping)

# modifiers
+ === 1 or more
* === 0 or more
? === 0 or 1
{3,5} === between 3 and 5


# ip address validator example
/^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/