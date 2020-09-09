System Design Interviews Guide

Blog post:
https://dev.to/mwong068/the-system-design-interview-for-beginners-n85

Cheatsheet:
https://gist.github.com/vasanthk/485d1c25737e8e72759f

1. Fully understand the problem and what you can do to solve it
    - ask clarifying questions like:
        - Will this need to be a full web app or just an API?
        - How can this product help solve users problems / what are they getting out of it?
        - How many people would be using this app?
        - How will the app or API be used?

2. Scope and scalability
    - You may have touched on this in the clarifying questions, but here you could start to imagine if thousands of users would be accessing this app all at once that could be a huge strain on one server. Whereas this could be an internal company tool that is only touched by a few people a day.

3. Create a template for your general structure
    - With all of this information, you should be able to make a very, very broad sketch of what your app or API would look like.
    - Say you're making a cookbook app where you'd want to be able to create recipe cards and see all of your respective recipes as well as other people's. You'd most likely need a full app with a front end where users can add and view their cards as well as a backend with a database to hold the information about the recipes.

4. Dive deeper into each part of the basic template you created
   - front end
   - back end
   - database
     - sql
     - oop / database schema

5. Revisit scaling for the more built out app / api
    - load balancer
    - caching