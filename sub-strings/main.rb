=begin
  method SUBSTRING - takes word as first argument, and then an array of valid substrings as second argument


  return  =>  a hash with each substring that was found in the original string

  so example we give below and there is below and low present in the dictionary so we will return a hash of { "below" => 1, "low" => 1 }
=end

def substrings( string, dictionary )
  arr = string.downcase.split(' ')

  dictionary.each_with_object(Hash.new(0)) do |word, result|
    arr.each do |string|
      result[word] += 1 if string.include?(word)
    end
  end
end