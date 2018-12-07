import UIKit

func meet(wizards: [String]) -> [Int] {
    var path : [Int] = Array(repeating: -1, count: wizards.count)
    var cost : [Int] = Array(repeating: Int.max, count: wizards.count)
    cost[0] = 0
    let wizardConnections = wizards.map {
        $0.components(separatedBy: " ").map { Int($0) }
    }
    dfs(wizardConnections as! [[Int]], &path, &cost, 0)
            print(1)
    if (path[path.count - 1] == -1) { return [] }

    var result : [Int] = []
    var i = path.count - 1
    while i > 0 {
        result.append(i)
        i = path[i]
    }
    result.append(i)
    return result.reversed()
}

func dfs(_ wizards: [[Int]], _ path: inout [Int], _ cost: inout [Int], _ current: Int){
    guard current != wizards.count else {
        return
    }
    
    for wizard in wizards[current]{
        var costToReach = Int()
        
        if (current == 0) { costToReach = 0 } else { costToReach = (wizard - current) * (wizard - current) + cost[current] }
        if (cost[wizard] > costToReach) {
            cost[wizard] = costToReach
            path[wizard] = current
            dfs(wizards, &path, &cost, wizard)
        }
    }
}

let wizards = [
    "1 2 3",    // wizard 0 (you) knows 1, 2, 3
    "8 6 4 ",   // wizard 1 knows 8, 6, 4
    "7 8 3",    // wizard 2 knows 7, 8, 3
    "8 1",      // wizard 3 knows 8, 1
    "6 ",       // wizard 4 knows 6
    "8 7",      // wizard 5 knows 8, 7
    "9 4",      // wizard 6 knows 9, 4
    "4 6",      // wizard 7 knows 4, 6
    "1",        // wizard 8 knows 1
    "1 4"      // wizard 9 knows 1, 4
]

meet(wizards: wizards)
