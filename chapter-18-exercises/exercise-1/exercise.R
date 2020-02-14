# load relevant libraries
library("httr")
library("jsonlite")

# Be sure and check the README.md for complete instructions!


# Use `source()` to load your API key variable from the `apikey.R` file you made.
# Make sure you've set your working directory!

nyt_key <-source("apikey.R")

query_params <- list("api-key" = nyt_key)

# Create a variable `movie_name` that is the name of a movie of your choice.


# Construct an HTTP request to search for reviews for the given movie.
# The base URI is `https://api.nytimes.com/svc/movies/v2/`
base_uri <- ("https://api.nytimes.com/svc/movies/v2/")
end_point <-("reviews/search.json")
uri <- paste0(base_uri, end_point)
# The resource is `reviews/search.json`
# See the interactive console for parameter details:
#   https://developer.nytimes.com/movie_reviews_v2.json
#
# You should use YOUR api key (as the `api-key` parameter)
# and your `movie_name` variable as the search query!


# Send the HTTP Request to download the data
# Extract the content and convert it from JSON
response <- GET(uri, query = query_params_list)
body <- content(response, "text", encoding ="UTF-8")
data <- fromJSON(body)
data 

# What kind of data structure did this produce? A data frame? A list?


# Manually inspect the returned data and identify the content of interest 
# (which are the movie reviews).
# Use functions such as `names()`, `str()`, etc.


# Flatten the movie reviews content into a data structure called `reviews`


# From the most recent review, store the headline, short summary, and link to
# the full article, each in their own variables


# Create a list of the three pieces of information from above. 
# Print out the list.
ot(data= diamonds_sample)+
  geom_violin(mapping = aes(x= color, y= price)) +
  scale_x_log10 +
  scale_y_log10
# Draw a scatter plot for the diamonds price (y) by carat (x). Color each point
# by the clarity (Remember, this will take a while. Use a sample of the diamonds 
# for faster results)
ggplot(data= diamonds_sample)+
  geom_violin(mapping = aes(x= color, y= price, color= clarity)) +
  scale_color_brewer(palette= "purpole", direction=-1)


# Change the color of the previous plot using a ColorBrewer scale of your choice. 
# What looks nice?



## Coordinate Systems

# Draw a bar chart with x-position and fill color BOTH mapped to cut
# For best results, SET the `width` of the geometry to be 1 (fill plot, no space
# between)
# TIP: You can save the plot to a variable for easier modifications


# Draw the same chart, but with the coordinate system flipped


# Draw the same chart, but in a polar coordinate system. It's a Coxcomb chart!



## Facets

# Take the scatter plot of price by carat data (colored by clarity) and add 
# _facets_ based on the diamond's `color`
ggplot(data= diamonds_sample)+
  geom_violin(mapping = aes(x= color, y= price, color= clarity)) +
  facet_wrap(~clarity)


## Saving Plots

# Use the `ggsave()` function to save the current (recent) plot to disk.
# Name the output file "my-plot.png".
# Make sure you've set the working directory!!
