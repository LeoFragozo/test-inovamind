# Inovamind Test

This api is built with ruby 3.02, rails 6.1.4.1 and it's persistence is managed by a mongo db database.

In order to run the api you must run in a terminal window:

* git clone https://github.com/LeoFragozo/test-inovamind

* cd test-inovamind (to change the current directory to the api's)

* run the "bundle" command to install the required gems

* run "sudo service mongod start" to start the mongodb daemon

* run "rails s" to start the rails server

* you can run some model tests that I created to check the fields in the database with "rspec"

# Postman configuration to test the api

* user creation: https://postimg.cc/GBJyd9d3
* token creation: https://postimg.cc/Q98WtsdQ
* display the quotes: https://postimg.cc/ft8SSFV6 - https://postimg.cc/YhZgxJd7 - and it's header configuration

# Features

This api is protected with a jwt token that you can generate (refer to the second postimg link to understand how to proceed) 

The tag_search symbol register get the keyword and it's scope do the search, then the crawler_service does the crawling at the quotes to scrape page, then it gets serialized using jbuilder being infiltered in the view that returns the serialized results at the quotes endpoint.
