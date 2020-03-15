module Nx
  class PermitFields
    def self.exclude(in_table_name, in_options)
      default_options = {
        base_fields: [
          :id,
          :created_at,
          :updated_at,
        ],
        fields: [],
      }

      options = default_options.merge(in_options)
      Clazz = Kernel.const_get(in_table_name.capitalize)
      fileds = Clazz.columns_hash.keys.map(&:to_sym)
      fields - options[:base_fields] - options[:fields]
    end
  end
end
