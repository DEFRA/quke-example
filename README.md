# Quke example

[![Build Status](https://travis-ci.com/DEFRA/quke-example.svg?branch=master)](https://travis-ci.com/DEFRA/quke-example)
[![Licence](https://img.shields.io/badge/Licence-OGLv3-blue.svg)](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3)

This repo serves as an example [Quke](https://github.com/Defra/quke) project. Refer to it for examples on how to setup your own projects, and how to use either Capybara or SitePrism in your steps to interact with a web page.

**Please note**. The one exception is the [demo_app](app) folder. The tests in this example run against a dummy web site whose code lives in this folder. We put it here so we are not dependent on an external site nor an internet connection in order for the examples to work.

## Pre-requisites

This project is setup to run against version 2.2.5 of Ruby.

The rest of the pre-requisites are the same as those for [Quke](https://github.com/DEFRA/quke#pre-requisites).

## Installation

First clone the repository and then drop into your new local repo

```bash
git clone https://github.com/DEFRA/quke-example.git && cd quke-example
```

Next download and install the dependencies

```bash
bundle install
```

## Configuration

You can figure out how the project runs using [Quke config files](https://github.com/DEFRA/quke#configuration). This project comes with an existing `.config.yml` file setup to allow these tests to pass.

### Experimenting & testing

You can amend the values in `.config.yml` to see how they effect the way Quke runs or alternatively create your own, for example `.config.test.yml`. If you stick to the convention of `.config.[my name].yml` [Git](https://git-scm.com/) will ignore your file which means you can put whatever you like in them and not risk the content being committed to source control!

## Setup

You'll then need to start the demo app which the examples run against

```bash
ruby demo_app/app.rb
```

***Note*** *If you are intending to make changes to the **demo_app** for example because you are experimenting with a new test, use `bundle exec rerun demo_app/app.rb` instead. This will save you having to restart it after every change.*

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

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

<http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3>

The following attribution statement MUST be cited in your products and applications when using this information.

> Contains public sector information licensed under the Open Government license v3

### About the license

The Open Government Licence (OGL) was developed by the Controller of Her Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.
