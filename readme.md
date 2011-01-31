# Word Searcher #

Your goal is to take this ready to run but useless UI word searcher and
turn it into something that is visually impressive with your mad skills.

## Install ##

  * fork it
  * bundle install
  * run it via `rackup`

## What it does ##

This is a barebones [Sinatra](http://sinatrarb.org) app that uses HAML from the `./views` directory to serve the index page.
It has a /find/{target} method that will return you words that start
with a or b.  This is configurable in the word_search_app.rb file but it
saves on startup time.

## What it could do. ##

This probably could do as-you-type autocompletion of words based on what you type
into the input box. At minimum it should display the found words after
the user submits input (oh, that form might not exist.)  The UI is
barebones and can be scrapped for something that better suits your
tastes... a backend developer just developed the API and its up to you
to make it do something interesting.
