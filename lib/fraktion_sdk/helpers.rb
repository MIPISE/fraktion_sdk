module FraktionSdk
  module Helpers
    def generate_uri(query = {})
      uri = parse_path
      uri
    end

    def format_hash(hash, required_keys, optional_keys)
      ensure_keys(
        hash,
        required_keys,
        optional_keys
      )
    end

    def ensure_keys(hash, required_keys = ‰i[], optional_keys = %i[])
      # Ensure there are no extra keys
      hash.assert_valid_keys(required_keys + optional_keys )

      # Ensure all required keys are present
      required_keys.each do |key|
        raise(ArgumentError, "Required key not found: #{key}") unless hash.has_key?(key)
      end
      hash
    end

    private
    def parse_path
      "#{FraktionSdk::configuration.url_path}/#{name.split("::")[1..-1].join("/").downcase}"
    end
  end
end