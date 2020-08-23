class LRUCache
    
    def initialize(n)
        @length = n
        @cache = Array.new(4)
    end

    def count
      self.cache.count { |el| !el.nil? }
    end


    def add(el)
        if self.cache.include?(el)
            cur_idx = self.cache.index(el)
            self.cache.delete_at(cur_idx)
            if self.count == @length - 1
                self.cache << el
            else
                self.cache[self.count] = el
                self.cache << nil
            end
        elsif self.count != 4
            self.cache[self.count] = el
        else
            self.cache.shift
            self.cache << el
        end
    end

    def show
      p @cache
    end

    private
    
    attr_reader :cache

end

johnny_cache = LRUCache.new(4)


johnny_cache.add("I walk the line")
johnny_cache.add(5)


johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])

johnny_cache.add(5)

johnny_cache.add(-5)

johnny_cache.add({a: 1, b: 2, c: 3})

johnny_cache.add([1,2,3,4])

johnny_cache.add("I walk the line")

johnny_cache.add(:ring_of_fire)

johnny_cache.add("I walk the line")

johnny_cache.add({a: 1, b: 2, c: 3})



johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]