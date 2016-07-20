# Ea::Validation

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ea-validation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ea-validation

## Usage

With this gem installed, a number of active model based validators become
available:

### Companies House Name

There are a number of restrictions as to what comprises a company name valid
for Companies House registration. This validator checks that the name complies
to these restrictions.

```ruby
validates :company_name, "ea/validation/companies_house_name" => true
```
### Companies House number

As with company names, there are also restrictions to the form of a company
registration number. This validator checks that the company registration
number complies to these restrictions.

```ruby
validates :number, "ea/validation/companies_house_number" => true
```

### Grid Reference

A grid reference should be of the form AA 12345 67890 (spaces optional).
The validator checks the format, and the the grid reference is valid.

```ruby
validates :grid_reference, "ea/validation/grid_reference" => true
```

## Modifications

Options can be passed into validation by replacing `true` with an options
hash. For example:

```ruby
validates(
  :grid_reference,
  "ea/validation/grid_reference" => {
    message: "Custom",
    allow_blank: true
  }
)
```