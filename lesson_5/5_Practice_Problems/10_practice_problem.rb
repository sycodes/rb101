[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.map do |key, value|
    incremented_hash[key] = value + 1
  end
  p incremented_hash
end