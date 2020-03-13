# Ea::Validation

**DO NOT USE**

> This gem is not maintained or used anymore. Use [Defra ruby validators](https://github.com/DEFRA/defra-ruby-validators) instead

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

There are a number of restrictions as to what comprises a company name valid for Companies House registration. 
This validator checks that the name complies to these restrictions.

```ruby
validates :company_name, "ea/validation/companies_house_name" => true
```

This validator checks that the name complies to the maximum company name length restriction.
```ruby
validates :name, "ea/validation/companies_house_name_length" => true
```
  
### Companies House number

As with company names, there are also restrictions to the form of a company registration number. 
This validator checks that the company registration number complies to these restrictions.

```ruby
validates :number, "ea/validation/companies_house_number" => true
```

A locale hint is available for your views, that details the restrictions, e.g

```ruby
    <span class="form-hint"><%= t('ea.validation.errors.companies_house_number.hint') %></span>
 ```   
 
### Grid Reference

A grid reference should be of the form AA 12345 67890 (spaces optional). 
The validator checks the format, and the the grid reference is valid.

```ruby
validates :grid_reference, "ea/validation/grid_reference" => true
```

Use the following format, to also check for the presence of the grid reference.

```ruby
validates :grid_reference, presence: { message: I18n.t("ea.validation.errors.grid_reference.blank") }

validates :grid_reference, "ea/validation/grid_reference" => true, allow_blank: true
```
 
  
### Text Only Content
  
Check a text field contains only letters and EA allowable characters.
 
```ruby
validates :some_text_field, "ea/validation/text_only_content_validator" => true
```

Use the following format, to also check for the presence of text, pass required field name to the error message.

```ruby
validates :name, presence: { message: I18n.t("ea.validation.errors.text_only_content.blank", field: 'name') }

validates :name, "ea/validation/text_only_content": true, allow_blank: true
```
  
## Modifications

Options can be passed into validation by replacing `true` with an options hash. For example

```ruby
validates(:grid_reference,"ea/validation/grid_reference" => {message: "Custom message to display", allow_blank: true})
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
