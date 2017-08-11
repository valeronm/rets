module Rets
  module Metadata
    class LookupType
      attr_reader :long_value, :short_value, :value

      def initialize(lookup_type_fragment)
        @value       = lookup_type_fragment['Value'].strip
        @short_value = lookup_type_fragment['ShortValue'].strip
        @long_value  = lookup_type_fragment['LongValue'].strip
      end

      # Print the tree to a file
      #
      # [out] The file to print to.  Defaults to $stdout.
      def print_tree(out = $stdout)
        out.puts "        #{long_value} -> #{value}"
      end
    end
  end
end
