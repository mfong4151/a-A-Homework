require 'set'


class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end

end

def bfs(node, target)
    visited = Set.new()
    queue = [node]

    while queue != []
        curr = queue.delete_at(0)
        visited.add(curr)

        if curr.val == target
            return curr
        else 
            curr.neighbors.each do |i|
                queue.push(i) if !visited.include?i
            end
        end
    end
    
    return falseg
end


visited = Set.new()
a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]


p bfs(a, 'b')