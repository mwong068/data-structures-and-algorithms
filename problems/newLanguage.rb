# New Language

# Suppose you are creating a new programming language. This language will support OOP, and to make it special, you want some features of it to differ from the standard.

# In some languages (such as C or Java), class constructor names are forced to have the same name as the class. Here you want to weaken this restriction, and to allow constructor names to be acceptable as long as they're close to the class name. We will consider two strings close if one can be obtained from the other, using the following operations:
#     - swap any two symbols in one of the strings,
#     - swap occurrences of any two existing symbols in one of the strings (for example, if your string cotains both a's and b's, you can change all a's to b's and all the b's to a's).

# Now you want to write a method that finds out whether the given methodName is considered close to the given className, by the definition above.