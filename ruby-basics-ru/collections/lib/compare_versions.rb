# frozen_string_literal: true

# BEGIN
def compare_versions(v1,  v2)
    norm_v1 = v1.split(".")
    norm_v2 = v2.split(".")
    res = 0
    (norm_v1.size - 1).downto(0) do |idx|
        num_1 = norm_v1[idx].to_i
        num_2 = norm_v2[idx].to_i

        if num_1 > num_2
            res = 1
        elsif num_1 < num_2
            res = -1
        end
    end
    res
end

# END
