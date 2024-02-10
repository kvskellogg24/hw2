# ENTR-451 Assignment #2

Now that we know how to connect our ruby code (in a Rails app) to our SQL database, let's rewrite the previous assignment in ruby.  You'll be using the domain model from _[hw1](hw1-solution.sql)_ to create the database structure for "KMDB" (the Kellogg Movie Database). The end product will be a report that prints the movies and the top-billed cast for each movie in the database.

### Getting Started

- Use this template to create a new GitHub repository (click *Use this template* at the top of this page); be sure that the new repository in your account is named `hw2`
- Open the new repository (the one in your GitHub account – it should be called `_Your GitHub Username_/hw2`) in Gitpod. 
- Complete the assignment per the detailed instructions found in the comments of _[kmdb.rb](kmdb.rb)_, executing the script by using the `rails runner kmdb.rb` command.
- Commit and sync often! When complete, ensure that your most up-to-date, finished work lives in your GitHub repository, then, submit the URL to your GitHub repository page – i.e. `https://github.com/_Your GitHub Username_/hw2`


gitpod /workspace/hw2 (main) $ rails runner kmdb.rb
Movies
======

Batman Begins            2005      PG-13          Warner Bros.        
The Dark Knight          2008      PG-13          Warner Bros.        
The Dark Knight Rises    2012      PG-13          Warner Bros.        

Top Cast
========

Batman Begins            Christian Bale           Bruce Wayne              
Batman Begins            Michael Caine            Alfred                   
Batman Begins            Liam Neeson              Ra's al Ghul             
Batman Begins            Katie Holmes             Rachel Dawes             
Batman Begins            Gary Oldman              Commissioner Gordon      
The Dark Knight          Christian Bale           Bruce Wayne              
The Dark Knight          Heath Ledger             Joker                    
The Dark Knight          Aaron Eckhart            Harvey Dent              
The Dark Knight          Michael Caine            Alfred                   
The Dark Knight          Katie Holmes             Rachel Dawes             
The Dark Knight Rises    Christian Bale           Bruce Wayne              
The Dark Knight Rises    Gary Oldman              Commissioner Gordon      
The Dark Knight Rises    Tom Hardy                Bane                     
The Dark Knight Rises    Joseph Gordon-Levitt     John Blake               
The Dark Knight Rises    Anne Hathaway            Selina Kyle 
