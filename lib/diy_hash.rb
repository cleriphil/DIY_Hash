class MyHash
  define_method(:initialize) do
    @keys = []
    @values = []
    @final_keys = []
    @final_values = []
  end

  define_method(:store) do |key, value|
    @keys.push(key)
    @values.push(value)
  end

  define_method(:fetch) do |key|
    number = @keys.index(key)
    @values[number]
  end

  define_method(:list_keys) do
    @keys
  end

  define_method(:list_values) do
    @values
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

  define_method(:merge) do |hash_2|
    hash_2_keys = hash_2.list_keys()
    hash_2_keys.each() do |key|
      @final_keys.push(key)
      @keys.each() do |key|
        @final_keys.push(key)
      end
    end
    hash_2_values = hash_2.list_values()
    hash_2_values.each() do |value|
      @final_values.push(value)
      @values.each() do |value|
        @final_values.push(value)
      end
    end
    new_array = Array.new()
    x = @final_keys.length()
    x.times() do |time|
      rocket_arrow = @final_keys[time].concat(" => ").concat(@final_values[time])
      new_array.push(rocket_arrow)
    end
    new_array.reverse()
  end
end
