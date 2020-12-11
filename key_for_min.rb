# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty? 
    return NIL 
  end
  minkey = :k     #arbitrary initialization
  minval = 100000000000000000000  #this makes me nervous because i don't know the max int available in ruby, so this could fail
  name_hash.each do |k,v|
    if v < minval
      minval = v
      minkey = k
    end
  end
  minkey
end