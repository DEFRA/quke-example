# Quke example

This repo serves as an example [Quke](https://github.com/Defra/quke) project. Refer to it for examples on how to setup your own projects, and how to use either Capybara or SitePrism in your steps to interact with a web page.

**Please note**. The one exception is the [demo_app](app) folder. The tests in this example run against a dummy web site whose code lives in this folder. We put it here so we are not dependent on an external site nor an internet connection in order for the examples to work.

## Pre-requisites

This project is setup to run against version 2.2.5 of Ruby.

The rest of the pre-requisites are the same as those for [Quke](https://github.com/DEFRA/quke#pre-requisites).

## Installation

First clone the repository and then drop into your new local repo

```bash
git clone https://github.com/Cruikshanks/quke-example.git && cd quke-example
```

Next download and install the dependencies

```bash
bundle install
```

## Configuration

You can figure out how the project runs using [Quke config files](https://github.com/DEFRA/quke#configuration). Before executing this project for the first time you'll need to create an initial `.config.yml` file.

```bash
touch .config.yml
```

Add the contents of the example below to the file to get you started, but check out [the full example](https://github.com/DEFRA/quke/blob/master/.config.example.yml) in **Quke** for full details on what you can configure.

```yaml
# Normally Capybara expects to be testing an in-process Rack application, but
# we're using it to talk to a remote host. Users of Quke can set what this will
# be by simply setting `app_host`. You can then use it directly using
# Capybara `visit('/Main_Page')` or `visit('/')` rather than having to repeat
# the full url each time. When using the Site_Prism page_objects use
# `set_url '/Main_Page'`. The default is ''.
app_host: "http://localhost:4567"

# Tells Quke which browser to use for testing. Choices are firefox, chrome
# browserstack and phantomjs, with the default being phantomjs.
driver: phantomjs

# Tell the driver Quke is using to send a different user-agent value to the site
# under test. Useful if you want the underlying driver to spoof what kind of
# browser the request is coming from. For example you may want to pretend to be
# a mobile browser so you can check what you get back versus the desktop
# version. Or you want to pretend to be another kind of browser, because the one
# you have is not supported by the site.
# Set here because we have a feature that tests this functionality
user_agent: "Mozilla/5.0 (MSIE 10.0; Windows NT 6.1; Trident/5.0)"
```

## Setup
You'll then need to start the demo app which the examples run against

```bash
ruby demo_app/app.rb
```

***Note*** *If you are intending to make changes to the **demo_app**, use `bundle exec rerun demo_app/app.rb` instead. This will save you having to restart it after every change.*

## Execution

Simply call

```bash
bundle exec quke
```

All being well all the tests should pass. You can now experiment with the examples provided, add your own, and get familiar with how to write your own **Cucumber** tests.

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

This information is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

> If you don't add a license it's neither free or open

