# frozen_string_literal: true

# BEGIN
def fizz_buzz(from_num, to_num)
    if from_num > to_num
        res = nil
    else
        res_arr = []
        from_num.upto(to_num) do |num|
            # puts "NUM ~> #{num}"
            if (num % 3 == 0) && (num % 5 == 0)
                res_arr << 'FizzBuzz'
            elsif num % 3 == 0
                res_arr << 'Fizz'
            elsif num % 5 == 0
                res_arr << 'Buzz'
            else
                res_arr << num
            end
        end
        res = res_arr.join(' ')
    end
    # puts "RES ~> #{str_res}"
    res
end

# END
