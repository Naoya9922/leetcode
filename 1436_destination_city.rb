# destination-city

# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  hash = paths.to_h
  hash.values.find{|v| !hash[v]}
end