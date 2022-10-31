class DoubleListNode

    attr_accessor :val, :nxt, :prev

    def initialize(val, nxt=nil ,prev=nil)
        @val = val
        @nxt = nxt
        @prev = prev
    end

    def show_val
        print self.val
    end

    def print_nodes

        curr = self
        while self.nxt != nil
            puts curr.val
            curr = curr.nxt
        end
    end
end


class LRUCache

    attr_accessor :cache, :latest, :recent
    attr_reader :count
    def initialize
        
        @cache = {}
        @latest = nil
        @recent = nil
        @count = 0
    end

    def add(i) #O(1) operation # adds element to cache according to LRU principle

    
      node = DoubleListNode.new(i)       #create linked-list node,

      if self.cache != {}        #Else we make this latest and recent
        self.latest = node
        self.recent = node

      else       #if there are other nodes, we add this to the end of recent, set recent = to that node

        self.latest.nxt = node
        self.recent =node
      end 
      
      self.cache[i] = node
      incr_len

      #add to hashmap
      #increase count by 1 

    end

    def show #shows the items in the cache, with the LRU item first #this has to operate in O(n) time if you want it pretty
        curr = self.latest

        while curr != nil
            puts curr
            curr = curr.nxt
        end
        
    end

    def read(i) #gives value associated with argument in O(1) time
        if self.cache.has_key?(i)
            self.cache[i] 
 
        else 
            -1

        end
    end

    def eject #Gets rid of value in O(1) time
        self.cache.delete(self.latest)
        self.latest = self.latest.nxt
        self.latest.prev = nil
    
    end

    private
    # helper methods go here!

    def incr_len #helper method for after something has been added to cache
        self.length += 1

    end
  end



#johnny_cache = LRUCache.new(4)
#
#johnny_cache.add("I walk the line")
#johnny_cache.add(5)
#
#johnny_cache.count # => returns 2
#
#johnny_cache.add([1,2,3])
#johnny_cache.add(5)
#johnny_cache.add(-5)
#johnny_cache.add({a: 1, b: 2, c: 3})
#johnny_cache.add([1,2,3,4])
#johnny_cache.add("I walk the line")
#johnny_cache.add(:ring_of_fire)
#johnny_cache.add("I walk the line")
#johnny_cache.add({a: 1, b: 2, c: 3})