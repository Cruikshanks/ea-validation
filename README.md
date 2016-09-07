# Ea::Validation

[![Build Status](https://travis-ci.org/EnvironmentAgency/ea-validation.svg?branch=master)](https://travis-ci.org/EnvironmentAgency/ea-validation)
[![Code Climate](https://codeclimate.com/github/EnvironmentAgency/ea-validation/badges/gpa.svg)](https://codeclimate.com/github/EnvironmentAgency/ea-validation)
[![Test Coverage](https://codeclimate.com/github/EnvironmentAgency/ea-validation/badges/coverage.svg)](https://codeclimate.com/github/EnvironmentAgency/ea-validation/coverage)
[![security](https://hakiri.io/github/EnvironmentAgency/ea-validation/master.svg)](https://hakiri.io/github/EnvironmentAgency/ea-validation/master)
[![Dependency Status](https://dependencyci.com/github/EnvironmentAgency/ea-validation/badge)](https://dependencyci.com/github/EnvironmentAgency/ea-validation)

## Installation

Add this line to your application's Gemfile

```ruby
gem 'ea-validation'
```

And then execute

    $ bundle

Or install it yourself as

    $ gem install ea-validation

## Usage

With this gem installed, a number of active model based validators become available.

### Companies House Name

There are a number of restrictions as to what comprises a company name valid for Companies House registration. This validator checks that the name complies to these restrictions.

```ruby
validates :company_name, "ea/validation/companies_house_name" => true
```
### Companies House number

As with company names, there are also restrictions to the form of a company registration number. This validator checks that the company registration number complies to these restrictions.

```ruby
validates :number, "ea/validation/companies_house_number" => true
```

### Grid Reference

A grid reference should be of the form AA 12345 67890 (spaces optional). The validator checks the format, and the the grid reference is valid.

```ruby
validates :grid_reference, "ea/validation/grid_reference" => true
```

## Modifications

Options can be passed into validation by replacing `true` with an options hash. For example

```ruby
validates(
  :grid_reference,
  "ea/validation/grid_reference" => {
    message: "Custom",
    allow_blank: true
  }
)
```

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3

The following attribution statement MUST be cited in your products and applications when using this information.

> Contains public sector information licensed under the Open Government license v3

### About the license

The Open Government Licence (OGL) was developed by the Controller of Her Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.
