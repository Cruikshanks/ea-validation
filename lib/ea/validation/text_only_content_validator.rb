# Validates the Contents of a text field to match the criteria :
#     Make sure the name contains only letters, spaces, commas, full stops, hyphens and apostrophes
#
module Ea
  module Validation
    class TextOnlyContentValidator < ActiveModel::EachValidator

      def validate_each(record, attribute, value)
        if value !~ valid_name_regex
          record.errors.add attribute,
                            options[:message] ||
                              I18n.t("ea.validation.errors.text_only_content.invalid", field: attribute)
        end
      end

      def valid_name_regex
        @valid_name_regex ||= /\A[\p{Alpha} ,\.'-]+\z/i
      end

    end
  end
end
