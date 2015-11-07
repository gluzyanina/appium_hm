When(/^I count how many total movies are on 'Features screen'$/) do
  featured_screen.count_movies
end

When(/^I open first five movies and print Movie title\/year and rating$/) do
  featured_screen.open_movies
end



When(/^I printout the highest one rating movie of first five movies$/) do
  featured_screen.highest_movie_rating
end