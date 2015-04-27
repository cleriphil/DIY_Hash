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
end
