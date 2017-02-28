# HotReads
HotReads is an app that allows users view "read" links aggregated to the top 10 visits in the last 24 hours.  It interacts with a upstream system [URLockBox](https://desolate-coast-51234.herokuapp.com/).  These apps were written in 12 hours

[Production](https://serene-shore-26911.herokuapp.com/)

## Installation

1. Clone the repository: `git clone https://github.com/mscherer11/final-hotreads`
2. Bundle `bundle install`
3. Start Rails server on port 3001: `rails s -p 3001`

## Testing
Testing is conducted via RSpec and can be triggered by running `rspec` in the terminal.  It has been configured with the poltergiest gem to run the phantomjs webdriver via `js: true` in Capybara tests.

## Technology
* Server: Rails -> 5.0.0
* Client-side: ERB/HTML
* Database: PostgreSQL

## Author
[Michael Scherer](https://github.com/mscherer11)

## Tutorial
Load the [app](https://serene-shore-26911.herokuapp.com/) to see the results
