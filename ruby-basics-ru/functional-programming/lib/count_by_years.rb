# frozen_string_literal: true

# BEGIN
def count_by_years(users)
    users.filter {|user| user[:gender] == 'male'}.reduce({}) do |res, user|
        year = user[:birthday].split('-')[0]
        res[year] ||= 0
        res[year] += 1
        res

    end
end

# END
