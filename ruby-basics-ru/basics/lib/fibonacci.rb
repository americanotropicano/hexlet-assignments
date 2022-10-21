# frozen_string_literal: true

# BEGIN
def fibonacci(n)
    res = nil
    numbers = [0, 1]
    # puts "NUMBER #{n}"
    if n > -1 
        if n < 2
            res = numbers[n]
        else
            0.upto(n-2) do |i|
                # puts "I ~> #{i} #{res}"
                numbers << (numbers[i] + numbers[i+1])
                res = numbers[i] + numbers[i+1]
            end
        end
        # 0.upto(n-2) do |next_el|
        #     puts next_le
        # end
    end
    # puts "NUMBER #{n} RES ~> #{res}"
    res
end

# END
