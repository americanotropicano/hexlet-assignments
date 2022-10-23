# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
    sorted_params = params.sort.to_h
    res = []
    sorted_params.each do |k, v|
        res << "#{k}=#{v}"
    end
    result = res.join("&")
    result
end
# END
# rubocop:enable Style/For
