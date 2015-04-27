require('rspec')
require('diy_hash')

describe(MyHash) do
  describe("#store") do
    it("stores arguments as a key and a value") do
      test_hash = MyHash.new()
      expect(test_hash.store("kitten", "cute")).to(eq(["cute"]))
     end
   end

  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end

  describe("#has_key?") do
    it("returns true if object contains key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.has_key?("kitten")).to(eq(true))
    end
  end

  describe("#has_value?") do
    it("returns true if object contains value") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.has_value?("cute")).to(eq(true))
    end
  end

  describe("#length") do
    it("returns the lengths of MyHash") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "cool")
      expect(test_hash.length()).to(eq(2))
    end
  end

  describe("#combine") do
    it("returning in 'key => value' format") do
      test_hash= MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "cool")
      expect(test_hash.combine()).to(eq(["kitten => cute", "dog => cool"]))
    end
  end
end
