class MyHash
  define_method(:initialize) do
    @keys = []
    @values = []
  end

  define_method(:store) do |key, value|
    @keys.push(key)
    @values.push(value)
  end

  define_method(:fetch) do |key|
    number = @keys.index(key)
    @values[number]
  end

  define_method(:has_key?) do |key|
    @keys.include?(key)
  end

  define_method(:has_value?) do |value|
    @values.include?(value)
  end

  define_method(:length) do
    @keys.length()
  end

  define_method(:combine) do
    new_array = Array.new()
    x = @keys.length()
    x.times() do |time|
      rocket_arrow = @keys[time].concat(" => ").concat(@values[time])
      new_array.push(rocket_arrow)
    end
    new_array
  end



end
