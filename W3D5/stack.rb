class Stack
    attr_accessor :stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end

class Queue

    attr_accessor :queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

class Map
    attr_reader :map

    def initialize
        @map = {}
    end

    def set(key,value)
        @map[key] = value
    end

    def get(key)
        @map[key]
    end

    def delete(key)
        @map.delete(key)
    end

    def show
        @map
    end
end
