# Validates the length of a company name does not exceed the EA allowed maximum length
#
module Ea
  module Validation
    class CompaniesHouseNameLengthValidator < ActiveModel::EachValidator

      def validate_each(record, attribute, value)
        if value.to_s.size >  CompaniesHouseNameLengthValidator.max_length
          record.errors.add(
            attribute,
            ( options[:message] ||I18n.t("ea.validation.errors.companies_house_name.too_long",
                                         max_length: CompaniesHouseNameLengthValidator.max_length) )
          )
        end
      end

      def self.max_length
        170
      end

    end
  end
end

