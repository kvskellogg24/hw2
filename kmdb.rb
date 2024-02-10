# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
warner_bros = Studio.new
warner_bros["name"] = "Warner Bros."
warner_bros.save

# Movie
# Insert "Batman Begins" to the movies table
batman_begins = Movie.new
batman_begins["title"] = "Batman Begins"
batman_begins["year_released"] = 2005
batman_begins["rated"] = "PG-13"
batman_begins["studio_id"] = warner_bros["id"]
batman_begins.save

# Insert "The Dark Knight" to the movies table
the_dark_knight = Movie.new
the_dark_knight["title"] = "The Dark Knight"
the_dark_knight["year_released"] = 2008
the_dark_knight["rated"] = "PG-13"
the_dark_knight["studio_id"] = warner_bros["id"]
the_dark_knight.save

# Insert "The Dark Knight Rises" to the movies table
the_dark_knight_rises = Movie.new
the_dark_knight_rises["title"] = "The Dark Knight Rises"
the_dark_knight_rises["year_released"] = 2012
the_dark_knight_rises["rated"] = "PG-13"
the_dark_knight_rises["studio_id"] = warner_bros["id"]
the_dark_knight_rises.save

# Actor
# Insert "Christian Bale" to the actors table
christian_bale = Actor.new
christian_bale["name"] = "Christian Bale"
christian_bale.save

# Insert "Michael Caine" to the actors table
michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"
michael_caine.save

# Insert "Liam Neeson" to the actors table
liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"
liam_neeson.save

# Insert "Katie Holmes" to the actors table
katie_holmes = Actor.new
katie_holmes["name"] = "Katie Holmes"
katie_holmes.save

# Insert "Gary Oldman" to the actors table
gary_oldman = Actor.new
gary_oldman["name"] = "Gary Oldman"
gary_oldman.save

# Insert "Heath Ledger" to the actors table
heath_ledger = Actor.new
heath_ledger["name"] = "Heath Ledger"
heath_ledger.save

# Insert "Aaron Eckhart" to the actors table
aaron_eckhart = Actor.new
aaron_eckhart["name"] = "Aaron Eckhart"
aaron_eckhart.save

# Insert "Maggie Gyllenhaal" to the actors table
maggie_gyllenhaal = Actor.new
maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"
maggie_gyllenhaal.save

# Insert "Tom Hardy" to the actors table
tom_hardy = Actor.new
tom_hardy["name"] = "Tom Hardy"
tom_hardy.save

# Insert "Joseph Gordon-Levitt" to the actors table
joseph_gordon_levitt = Actor.new
joseph_gordon_levitt["name"] = "Joseph Gordon-Levitt"
joseph_gordon_levitt.save

# Insert "Anne Hathaway" to the actors table
anne_hathaway = Actor.new
anne_hathaway["name"] = "Anne Hathaway"
anne_hathaway.save

# Role
# Batman Begins
# Insert "Bruce Wayne" to the roles table
bruce_wayne = Role.new
bruce_wayne["movie_id"] = batman_begins["id"]
bruce_wayne["actor_id"] = christian_bale["id"]
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne.save

# Insert "Alfred" to the roles table
alfred = Role.new
alfred["movie_id"] = batman_begins["id"]
alfred["actor_id"] = michael_caine["id"]
alfred["character_name"] = "Alfred"
alfred.save

# Insert "Ra's al Ghul" to the roles table
ras_al_ghul = Role.new
ras_al_ghul["movie_id"] = batman_begins["id"]
ras_al_ghul["actor_id"] = liam_neeson["id"]
ras_al_ghul["character_name"] = "Ra's al Ghul"
ras_al_ghul.save

# Insert "Rachel Dawes" to the roles table
rachel_dawes = Role.new
rachel_dawes["movie_id"] = batman_begins["id"]
rachel_dawes["actor_id"] = katie_holmes["id"]
rachel_dawes["character_name"] = "Rachel Dawes"
rachel_dawes.save

# Insert "Commissioner Gordon" to the roles table
commissioner_gordon = Role.new
commissioner_gordon["movie_id"] = batman_begins["id"]
commissioner_gordon["actor_id"] = gary_oldman["id"]
commissioner_gordon["character_name"] = "Commissioner Gordon"
commissioner_gordon.save

# The Dark Knight
# Insert "Bruce Wayne" to the roles table
bruce_wayne = Role.new
bruce_wayne["movie_id"] = the_dark_knight["id"]
bruce_wayne["actor_id"] = christian_bale["id"]
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne.save

# Insert "Joker" to the roles table
joker = Role.new
joker["movie_id"] = the_dark_knight["id"]
joker["actor_id"] = heath_ledger["id"]
joker["character_name"] = "Joker"
joker.save

# Insert "Harvey Dent" to the roles table
harvey_dent = Role.new
harvey_dent["movie_id"] = the_dark_knight["id"]
harvey_dent["actor_id"] = aaron_eckhart["id"]
harvey_dent["character_name"] = "Harvey Dent"
harvey_dent.save

# Insert "Alfred" to the roles table
alfred = Role.new
alfred["movie_id"] = the_dark_knight["id"]
alfred["actor_id"] = michael_caine["id"]
alfred["character_name"] = "Alfred"
alfred.save

# Insert "Rachel Dawes" to the roles table
rachel_dawes = Role.new
rachel_dawes["movie_id"] = the_dark_knight["id"]
rachel_dawes["actor_id"] = katie_holmes["id"]
rachel_dawes["character_name"] = "Rachel Dawes"
rachel_dawes.save

# The Dark Knight Rises
# Insert "Bruce Wayne" to the roles table
bruce_wayne = Role.new
bruce_wayne["movie_id"] = the_dark_knight_rises["id"]
bruce_wayne["actor_id"] = christian_bale["id"]
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne.save

# Insert "Commissioner Gordon" to the roles table
commissioner_gordon = Role.new
commissioner_gordon["movie_id"] = the_dark_knight_rises["id"]
commissioner_gordon["actor_id"] = gary_oldman["id"]
commissioner_gordon["character_name"] = "Commissioner Gordon"
commissioner_gordon.save

# Insert "Bane" to the roles table
bane = Role.new
bane["movie_id"] = the_dark_knight_rises["id"]
bane["actor_id"] = tom_hardy["id"]
bane["character_name"] = "Bane"
bane.save

# Insert "John Blake" to the roles table
john_blake = Role.new
john_blake["movie_id"] = the_dark_knight_rises["id"]
john_blake["actor_id"] = joseph_gordon_levitt["id"]
john_blake["character_name"] = "John Blake"
john_blake.save

# Insert "Selina Kyle" to the roles table
selina_kyle = Role.new
selina_kyle["movie_id"] = the_dark_knight_rises["id"]
selina_kyle["actor_id"] = anne_hathaway["id"]
selina_kyle["character_name"] = "Selina Kyle"
selina_kyle.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
column_widths = [25, 10, 15, 20]
movies = Movie.all
for movie in movies
    title = movie["title"]
    year_released = movie["year_released"]
    rated = movie["rated"]
    studio_name = Studio.find_by("id" => movie["studio_id"])["name"]
    
    print "#{title}" + " " * (column_widths[0] - title.length)
    print "#{year_released}" + " " * (column_widths[1] - year_released.to_s.length)
    print "#{rated}" + " " * (column_widths[2] - rated.length)
    print "#{studio_name}" + " " * (column_widths[3] - studio_name.length)
    puts ""
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
column_widths = [25, 25, 25]
movies = Movie.all
for movie in movies
    roles = Role.where("movie_id" => movie["id"])
    for role in roles
        actor = Actor.find_by("id" => role["actor_id"])

        movie_title = movie["title"]
        actor_name = actor["name"]
        character_name = role["character_name"]

        print "#{movie_title}" + " " * (column_widths[0] - movie_title.length)
        print "#{actor_name}" + " " * (column_widths[1] - actor_name.length)
        print "#{character_name}" + " " * (column_widths[2] - character_name.length)
        puts ""
    end
end
