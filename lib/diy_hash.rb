class MyHash
  define_method(:initialize) do |key, value|
    @key = key
    @value = value
  end

  define_method(:store) do |key, value|
    keys = []
    keys.push(@key)
    values = []
    values.push(@value)
  end
end


  # define_method(:fetch) do |key|






  # define_method(:store) do |key, value|
  #   new_list = Array.new()
  #   new_string = @key.concat(" => ").concat(@value)
  #   new_list.push(new_string)
  # end

  # define_method(:fetch) do
  #  @value
  # end
