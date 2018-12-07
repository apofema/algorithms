// Complete the meet function below.
import Foundation

func meet(wizards: [String]) -> [Int] {
    var path : [Int] = Array(repeating: -1, count: wizards.count)
    var cost : [Int] = Array(repeating: Int.max, count: wizards.count)
    cost[0] = 0
    let wizardConnections = wizards.map {
        $0.components(separatedBy: " ").map { Int($0)! }
    }
    dfs(wizardConnections, &path, &cost, 0)
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
let wizards = ["jdkfaj"]
//    "3",  // wizard 0 (you) knows 1, 2, 3
//    "2",  // wizard 1 knows 8, 6, 4
//    "1",  // wizard 2 knows 7, 8, 3
//    "0",    // wizard 3 knows 8, 1
//    "0",      // wizard 4 knows 6


meet(wizards: wizards)



//find the all the possible continuous sums of the number (15=1+2+3+4+5, 15=4+5+6, 15=7+8) -> return 3

func getNumberOfContiniousSumPaths(_ number: Int) -> Int {
    var counter = 0
    for k in 1..<number {
        var i = k
        var j = number - 1
        while i < number && i < j{
            let sum = (i + j) * (j - i + 1) / 2
//            print("i: \(i), j: \(j)")
//            print(sum)
            if sum == number {
                counter += 1
                i += 1
                j -= 1
            } else if sum > number {
                j -= 1
            } else {
                i += 1
            }
        }
    }
    return counter
}

//getNumberOfContiniousSumPaths(25000)
