module Sass::Script::Functions

    def escape(string)
        assert_type string, :String
        Sass::Script::String.new(string.value.codepoints.map{ |i|
            '\\' + i.to_s(16).upcase
        }.join(''), :string)
    end
    declare :escape, :args => [:string]

end
