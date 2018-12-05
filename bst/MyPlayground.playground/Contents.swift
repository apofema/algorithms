public class Node {
    var left, right: Node?
    var data: Int
    
    public init(_ data: Int){
        self.data = data
    }
    
    public func insert(_ node: Node?, _ data: Int) -> Node {
        guard node != nil else {
            return Node(data)
        }
        
        if (data <= node!.data) {
            node!.left = insert(node!.left, data)
        } else {
            node!.right = insert(node!.right, data)
        }
        return node!
    }
}

func isPresent(_ root: Node?, _ value: Int) -> Int {
    guard root != nil else {
        return 0
    }
    if root!.data == value {
        return 1
    } else if root!.data < value {
        return isPresent(root!.right, value)
    } else {
        return isPresent(root!.left, value)
    }
}

let root = Node(20)
let node1 = Node(10)
let node2 = Node(30)
let node3 = Node(8)
let node4 = Node(12)
let node5 = Node(25)
let node6 = Node(40)
root.left = node1
root.right = node2
node1.left = node3
node1.right = node4
node2.left = node5
node2.right = node6

isPresent(root, 12)
