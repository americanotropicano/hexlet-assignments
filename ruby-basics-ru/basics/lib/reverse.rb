# frozen_string_literal: true

# BEGIN
def reverse(str)
    res = ''
    str.each_char do |c|
        res = "#{c}#{res}"
    end
    # puts "#{str} ~> #{res}"
    res
end

# END
