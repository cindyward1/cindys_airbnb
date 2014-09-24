cindys_airbnb
====================

# README for the Airbnb Clone application written in Rails with AJAX

* Author: Cindy Ward <cindyward@yahoo.com>
* Date created: September 23, 2014
* Last modification date: September 28, 2014
* Created for:  Epicodus, Summer 2014 session

## Included; written by author:
* ./README.md (this file)
* ./Gemfile (list of gems to be installed by bundler; please see below for more information)
* ./Gemfile.lock (list of gems and versions actually installed by bundler; please see below for more information)
* ./LICENSE.md (using the "Unlicense" template)
* ./Rakefile (configuration information used by 'rake' utility)
* ./app/assets/images/logo.png (downloaded from Web then customized)
* ./app/assets/stylesheets/application.css.scss (modified by author)
* ./app/controllers/application\_controller.rb (modified by author)
* ./app/controllers/users\_controller.rb
* ./app/models/landlord.rb (the Ruby implementation of the Landlord model, child of User model)
* ./app/views/layouts/\_errors.html.erb (error partial form)
* ./app/views/layouts/application.html.erb (modified by author)
* ./app/views/recipe\_users/\_form1.html.erb (shared partial form)
* ./config/routes.rb (the Rails routes for user action requests)
* ./db/config.yml (database configuration file showing the names of the development and test databases)
* ./db/schema.rb (database schema)
* ./db/migrate/*.rb (database migrations, which show the development of the database step-by-step. These are stored in the database as an additional table. The names are preceded by time stamps so they vary)
* ./spec/features/landlord\_spec.rb (the test spec for the Landlord class)
* ./spec/models/landlord\_spec.rb (the test spec for the Landlord portion of the application)

## Requirements for execution:

* This application can be run in production mode over the World Wide Web from [Heroku](https://www.heroku.com/) at http://cindys-airbnb.herokuapp.com . It uses a Mailgun sandbox server to send emails confirming registration and reservation to users.

* If you wish to run the application on your local computer in development mode, it requires the following:

  * [The Ruby language interpreter](https://www.ruby-lang.org/en/downloads/) must be installed. Please use version 2.1.2

  * [git](http://github.com/) must be installed. You will need to enter the following at a terminal application prompt **$: git clone http://github.com/cindyward1/cindys\_airbnb , which will create a cindys\_airbnb directory with app, bin, config, db, lib, log, public, spec, tmp, and vendor directories

  * [Homebrew](http://brew.sh/) is a package installer for Apple computers. To install homebrew, enter the following at a terminal application prompt **$: ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"**

  * [PostgreSQL](http://http://www.postgresql.org/) is a SQL database package. To install PostgreSQL on an Apple computer, enter the following at a terminal application prompt **$: brew install postgres** . To configure PostgreSQL, enter the following commands at a terminal application prompt $:
    * **$: echo "export PGDATA=/usr/local/var/postgres" >> ~/.bash\_profile**
    * **$: echo "export PGHOST=/tmp" >> ~/.bash\_profile**
    * **$: source ~/.bash\_profile**
    * To start the PostgreSQL server, enter the following at a terminal application prompt **$: postgres** . It is necessary to leave the window open for the server to continue to run. To create a database with the user's login name, enter the following at a teriminal application prompt **$: createdb $USER**

  * [Bundler](http://bundler.io) tracks and installs the exact gems and versions that are needed. To install Bundler, enter the following at a terminal application prompt **$: gem install bundler**

  * [PhantomJS](http://phantomjs.org/) is a headless WebKit scriptable with a JavaScript API. This is used for testing but is not available as a Ruby gem. To install it, enter the following at a terminal application prompt **$: brew install phantomjs**

  * The following gems from http://rubygems.org will be automatically installed by entering the following at a terminal application prompt **$: bundle install**
    * [rails](https://rubygems.org/gems/rails) is a full-stack web framework. Please use Rails 4.1.5
    * [pg](https://rubygems.org/gems/pg) implements the Ruby interface to the PostgreSQL database
    * [bootstrap-sass](https://rubygems.org/gems/bootstrap-sass) implements the Ruby interface to Bootstrap (a popular HTML, CSS, and JS framework)
    * [sass-rails](https://rubygems.org/gems/sass-rails) is the SASS adapter for the Rails asset pipeline
    * [uglifier](https://rubygems.org/gems/uglifier) wraps UglifyJS (a JavaScript parser, mangler/compressor and beautifier toolkit) so it is accessible in Ruby
    * [coffee-rails](https://rubygems.org/gems/coffee-rails) is the CoffeeScript adapter for the Rails asset pipeline
    * [jquery-rails](https://rubygems.org/gems/jquery-rails) provides jQuery and the jQuery-ujs driver for Rails
    * [turbolinks](https://rubygems.org/gems/turbolinks) makes following links in a Web application faster
    * [autoprefixer-rails](https://rubygems.org/gems/autoprefixer-rails) parses CSS and adds vendor prefixes to CSS rules using values from the 'Can I Use' Web site
    * [devise](https://rubygems.org/gems/devise) provides a flexible authentication solution for Rails with Warden (middleware that provides authentication for applications using Rack. (Rack provides a minimal, modular and adaptable interface for developing web applications in Ruby.)
    * [paperclip](https://rubygems.org/gems/paperclip) provides easy upload management for ActiveRecord
    * [kaminari](https://rubygems.org/gems/kaminari) is a "Scope & Engine" based, clean, powerful, agnostic, customizable and sophisticated paginator for Rails
    * (development configuration only) [better\_errors](https://rubygems.org/gems/better\_errors) provides a better error page for Rails and other Rack apps. Includes source code inspection, a live REPL and local/instance variable inspection for all stack frames
    * (development configuration only) [binding\_of\_caller](https://rubygems.org/gems/binding\_of\_caller) retrieve the binding of a method's caller; can also retrieve bindings even further up the stack
    * (development configuration only) [quiet\_assets](https://rubygems.org/gems/quiet\_assets) turns off Rails asset pipeline log
    * (development configuration only) [letter\_opener](https://rubygems.org/gems/letter_opener) opens a preview of a "sent" email in the browser instead of actually sending it
    * (development and test configurations only) [rspec-rails](https://rubygems.org/gems/rspec-rails) implements RSpec for Rails
    * (test configuration only) [shoulda-matchers](http://robots.thoughtbot.com/shoulda-matchers-2-6-0) "makes tests easy on the fingers and eyes" by simplifying the expression of rspec test conditions to be met
    * (test configuration only) [capybara](https://rubygems.org/gems/capybara) is an integration testing tool for rack based web applications. It simulates how a user would interact with a website
    * (test configuration only) [launchy](https://rubygems.org/gems/launchy) is a helper class for launching cross-platform applications in a "fire and forget" manner
    * (test configuation only) [factory_girl](https://rubygems.org/gems/factory_girl) provides a framework and DSL for defining and using factories, which allows more flexible, less error-prone testing
    * (test configuation only) [database_cleaner](https://rubygems.org/gems/database_cleaner) provides strategies for cleaning databases and is used to ensure a clean state for testing
    * (test configuation only) [poltergeist](https://rubygems.org/gems/poltergeist) is a driver for Capybara that allows running tests on the headless WebKit browser provided by PhantomJS
    * (production configuration only) [rails\_12factor](https://rubygems.org/gems/rails\_12factor) runs Rails the 12factor way (allowing the application to be run at the same time by multiple Web users)
    * (production configuration only) [rest-client](https://rubygems.org/gems/rest-client) is a simple HTTP and REST client for Ruby

  * To create the database, cd to (clone location)/cindys\_airbnb and enter the following at a terminal application prompt **$: rake db:create** followed by **$: rake db:schema:load**

  * To run the application takes several steps:
    * You must start the Rails server for the application to function at all. cd to (clone location)/cindys\_airbnb and enter the following at a terminal application prompt **$: rails server . This window must stay open the entire time the application is running; it can be minimized.
    * After the Rails server is running, run the Chrome Web browser and enter **localhost:3000** in the Web address field. This should bring up the login screen. To create a new user, follow the "Register with Cindy's Airbnb" link near the bottom of the Web page.

  * You can also test a non-interactive version of the methods against their test cases found in (clone location)/cindys\_airbnb/spec/\*.rb using rspec (see gem reference above). Please use version 3.1.1. If you wish to do this, you must first cd to (clone location)/cindys\_airbnb and enter the following at a terminal application **$: rake db:test:prepare** . This will prepare the test version of the database for use. Then to run rspec, cd to (clone location)/cindys\_airbnb and enter the following string at a terminal application **$: rspec** (This command will automatically execute any .rb file it finds in ./spec/.)

* Please note that this repository has only been tested with [Google Chrome browser](http://www.google.com/intl/en/chrome/browser) version 36.0.1985.125 on an iMac running [Apple](http://www.apple.com) OS X version 10.9.4 (Mavericks). Execution on any other computing platform, browser or operating system is at the user's risk.

## Description:
This Ruby application implements a graphical user interface to a rental management application. The user interface is divided into two parts depending on the user type: the actions a landlord performs to list and maintain the listings of rental properties, and the actions a renter performs to select and reserve rental properties.

### User stories for the landlord:
* As a landlord, I want to be able to create a uniquely named, secure landlord account and have my registration confirmed via email.
* As a landlord, I want to list my rental including rental description, address, rental rate, and miscellaneous requirements. I then want to be able to maintain or delete my listing.
* As a landlord, I want to optionally be able to upload a photo of my rental.
* As a landlord, I want to keep track of the YTD and future reservations for my rental.
* As a landlord, I want to receive an email message when my rental is reserved by a renter.
* As a landlord, I want to be able to rate and make comments about renters.
* As a landlord, I want to be able to respond to comments made about me and my rental.
* As a landlord, I want to be able to see the ratings and comments of others about renters.

### User stories for the renter:
* As a renter, I want to be able to create a secure renter account and have my registration confirmed via email.
* As a renter, I want to see all rentals available in a city, including rates, addresses, and photos (if available). The display needs to have pagination so I can keep track of the rentals I've seen
* As a renter, I want to see all rentals available in a city for a given time period.
* As a renter, I want to see all rentals available in a city within a range of rental rates.
* As a renter, I want to be able to reserve a rental for a specific period of time and receive an email confirmation of the reservation. I also want to be able to cancel any reservation and receive an email confirmation of the cancellation. If the reservation period has already begun, I want to be able to cancel the remainder of the reservation without having to pay.
* As a renter, I want to be able to rate and make comments about landlords and properties.
* As a renter, I want to be able to respond to comments made about me.
* As a renter, I want to be able to see the ratings and comments of others about landlords and properties.

### Constraints and conditions:
* If a user wishes to be both a landlord and a renter, they must have 2 different user names (user names are unique for all users, whether landlords or renters). This is a constraint because I used single-table inheritance rather than a more flexible mechanism to distinguish between the two types of users.

##Thanks:
* To the staff at Epicodus for providing such a wonderful boot camp class with a tremendous internship opportunity at the end! It's been a lot of hard work but totally worth it :)
